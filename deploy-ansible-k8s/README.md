# Run virtual env with prerequisites
$ cd ansible/
$ ./venv.sh
$ source venv/bin/activate

# Run playbook to deploy app depending environment
$ ansible-playbook deploy_my_app.yaml -i inventories/dev
$ ansible-playbook deploy_my_app.yaml -i inventories/prod

# Chnage variable, you will see the change information
# Prerequisies: Ansible >=2.6
