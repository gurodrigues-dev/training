# entrando na máquina (esse ip já não existe mais)
ssh root@172.104.98.27

# (atualizando repo terminal)
yum install epel-release

# instalando ansible
yum install ansible

# testando comando do ansible
ansible

# pasta de locação do ansible
cd /etc/ansible/

# verificando o que existe dentro da pasta
ls 

# entrando no host 
# (Lembrando que no arquivo hosts dessa máquina não alterei nada, apenas adicionei as maquinas ao arquivo)
vim hosts

# acessando o arquivo de configurações do ansible
vim ansible.cfg

# pingando as máquinas 
ansible distros

# atualizando apt das máquinas
ansible distros -a "apt-get update"

# testando tempo de "up" das máquinas
ansible distros -a "uptime"

# inserindo playbook para instalação do nginx
vim playbook.yml

# executando playbook
ansible-playbook playbook.yml
