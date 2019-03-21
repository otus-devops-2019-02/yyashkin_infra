Подключение к someinternalhost одной строкой:
ssh -i ~/.ssh/id_rsa -At yashkin@104.155.36.60 ssh 10.132.0.3

Дополнительное задание:
Для удобного подключения к хостам можно создать файл ~/.ssh/config и прописать в нем хосты и параметры подключения к ним:

Host bastion
    Hostname 104.155.36.60
    User yashkin
    IdentityFile ~/.ssh/id_rsa
    ForwardAgent yes

Host someinternalhost
    Hostname 10.132.0.3
    User yashkin
    ProxyCommand ssh -W %h:%p bastion

Подключение к Someinternalhost: ssh someinternalhost    

bastion_IP = 104.155.36.60
someinternalhost_IP = 10.132.0.3
