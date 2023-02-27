# 1. Instalação

- Necessário ter instalado o OpenSSH

# Atualizando comandos
sudo apt update

# Instalando JDK
sudo apt install openjdk-11-jdk -y

# Instalando Repo do Jenkins
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo tee /usr/share/keyrings/jenkins-keyring.asc > /dev/null

# Atualizando comandos novamente
sudo apt update

# Instalando Jenkins
sudo apt install jenkins -y

# Verificando saúde do Jenkins
sudo systemctl status jenkins

# Liberando porta do Jenkins no firewall
sudo ufw allow 8080

# Verificando status da porta
sudo ufw status

# Verificando se a porta esta ativa
sudo ufw enable

# Adicionando Jenkins a um domain
http://ip_address_or_domain:8080

# Entrando no Jenkins localmente
http://localhost:8080

# Ao entrar no Jenkins será necessário uma senha, a encontre aqui:
sudo cat /var/lib/jenkins/secrets/initialAdminPassword

# 2. Criando Usuários
- Criando Usuário para Devs
    -> Nas configurações de segurança globais, criamos uma matrix de permissionamento baseada no tipo de usuário.

    --> Admin tem permissão de administrador.

    --> Developer tem permissão de Buildar, cancelar. Além de ler tudo.

- Lembrando que podemos gerenciar todos os plugins através do Manage Plugins





