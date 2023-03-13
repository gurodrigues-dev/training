from dotenv import find_dotenv, load_dotenv
import os

load_dotenv(find_dotenv('../config/environment.env'))

URL = os.environ.get("url")
print(URL)