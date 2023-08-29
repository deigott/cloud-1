# Installing all requirements
sudo dnf install sshpass -y

# Creating ansible vault password file
ansible-vault create vault.yml


# Running the master playbook to confgure all servers
ansible-playbook -i inventory master.yml --ask-vault-pass