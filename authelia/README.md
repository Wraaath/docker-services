# 🔑 Authelia
![Authelia](https://camo.githubusercontent.com/6dcb546c18d2ff34f4f23e9b5bd60ee1e75e2c899bb46fb716c432a1f6d2db19/68747470733a2f2f7777772e61757468656c69612e636f6d2f696d616765732f61757468656c69612d7469746c652e706e67)

[Authelia](https://www.authelia.com) is an open-source authentication and authorization server, providing robust multi-factor authentication and single sign-on (SSO) capabilities for applications via a web portal. It’s specifically designed to work in tandem with reverse proxies, enhancing their security.

## 📜 Instructions
To get a hashed password for `users_database.yml` run:
```bash
sudo docker run authelia/authelia:latest authelia hash-password 'yourpassword'
```