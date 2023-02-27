from dotenv import find_dotenv, load_dotenv
import os

load_dotenv(find_dotenv('../environment.env'))

EMAIL_AMAZON = os.environ.get("email_amazon")
SENHA_AMAZON = os.environ.get("senha_amazon")

EMAIL_KABUM = os.environ.get("email_kabum")
SENHA_KABUM = os.environ.get("senha_kabum")

EMAIL_KALUNGA = os.environ.get("email_kalunga")
SENHA_KALUNGA = os.environ.get("senha_kalunga")

KEY = os.environ.get("api_key")

