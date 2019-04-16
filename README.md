Homework: ansible-1

- При запуске плейбука ansible-playbook clone.yml плейбук выполнился без ошибок но изменений не произошло, потому что каталог /home/yashkin/reddit уже был на appserver.
- При удалении rm -rf ~/reddit и запуске плейбука nsible-playbook clone.yml плейбук выполнился без ошибок и скопировал наш репозиторий