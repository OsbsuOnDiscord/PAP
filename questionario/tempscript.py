from flask import Flask, request, jsonify
import subprocess
import smtplib
import threading
from email.mime.text import MIMEText
from email.mime.multipart import MIMEMultipart
import mysql.connector
from email import encoders
from email.header import Header  

db_config = {
    'host': 'localhost',  
    'user': 'root',       
    'password': '',  
    'database': 'fixdb'  
}

app = Flask(__name__)

SENDER_EMAIL = "email de teste"
SENDER_PASSWORD = "Inserir palavra pass para email de teste"
SMTP_SERVER = "smtp.sapo.pt"
SMTP_PORT = 587


def get_userid_from_email(email):
    try:
    
        conn = mysql.connector.connect(**db_config)
        cursor = conn.cursor()

        query = "SELECT userid FROM utilizador WHERE email = %s"
        cursor.execute(query, (email,))
        result = cursor.fetchone()

        cursor.close()
        conn.close()

        if result:
            return result[0]
        else:
            return None 
    except Exception as e:
        print(f"Error fetching user ID: {e}")
        return None

def process_ai_and_send_email(receiver_email, form_data):
    try:
      
        command = ["ollama", "run", "mistral", f'O meu computador está com o seguinte problema, por favor retorne os potenciais soluções: {form_data["descricao_problema"]}']
        result = subprocess.run(command, capture_output=True, text=True, timeout=300) 

        ai_response = result.stdout.strip()

        conn = mysql.connector.connect(**db_config)
        cursor = conn.cursor()

        user_id = get_userid_from_email(receiver_email)
        if not user_id:
            print("User ID not found for email:", receiver_email)
            return

        insert_query = """
            INSERT INTO problemas (
                tipoequipamento, marcamodelo, sistemaoperativo, soversao, hardware, descricao,
                inicioproblema, liganormal, mensagemerro, lentidao, naoliga, sobreaquecimento,
                bluescreen, audio, mainternet, perifericos, updates, hardwarenovo, energiadown,
                userid, resultado
            ) VALUES (
                %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s
            )
        """

        values = (
            form_data["tipo_equipamento"], form_data["marca_modelo"], form_data["sistema_operativo"],
            form_data["versao_so"], form_data["config_hardware"], form_data["descricao_problema"],
            form_data["inicio_problema"], form_data["liga"], form_data["mensagem_erro"],
            1 if "lentidao" in form_data["sintomas"] else 0,
            1 if "nao-liga" in form_data["sintomas"] else 0,
            1 if "sobreaquecimento" in form_data["sintomas"] else 0,
            1 if "ecra-azul" in form_data["sintomas"] else 0,
            1 if "problemas-audio" in form_data["sintomas"] else 0,
            1 if "internet-ma" in form_data["sintomas"] else 0,
            1 if "perifericos" in form_data["sintomas"] else 0,
            0,  
            0, 
            0,  
            user_id, 
            ai_response, # coloca o resultado da AI na tabela resultado
        )

        cursor.execute(insert_query, values)
        conn.commit()
        cursor.close()
        conn.close()

        msg = MIMEMultipart()
        msg["From"] = SENDER_EMAIL
        msg["To"] = receiver_email
        msg["Subject"] = Header("O seu diagnóstico chegou", "utf-8").encode()
        msg.attach(MIMEText(ai_response, "plain", "utf-8"))

        server = smtplib.SMTP(SMTP_SERVER, SMTP_PORT)
        server.starttls()
        server.login(SENDER_EMAIL, SENDER_PASSWORD)
        server.sendmail(SENDER_EMAIL, receiver_email, msg.as_string())
        server.quit()

        print(f"Email sent successfully to {receiver_email}")

    except Exception as e:
        print(f"Error processing AI or sending email: {e}")

@app.route('/form/<receiver_email>', methods=['POST'])
def receive_form_data(receiver_email):
    data = request.json
    if not data or 'descricao_problema' not in data:
        return jsonify({"error": "Invalid data"}), 400

    form_data = {
        "tipo_equipamento": data["tipo_equipamento"],
        "marca_modelo": data["marca_modelo"],
        "sistema_operativo": data["sistema_operativo"],
        "versao_so": data["versao_so"],
        "config_hardware": data["config_hardware"],
        "descricao_problema": data["descricao_problema"],
        "inicio_problema": data["inicio_problema"],
        "liga": data["liga"],
        "mensagem_erro": data["mensagem_erro"],
        "sintomas": data.get("sintomas", [])
    }

    threading.Thread(target=process_ai_and_send_email, args=(receiver_email, form_data)).start()

    return jsonify({"status": "processing", "message": "An email will arrive in around 5 minutes."}), 202

if __name__ == '__main__':
    app.run(debug=True)
