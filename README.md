⭐ Be sure to star!                                                                   Table of contents ↗️

# 🐳 Docker services
These are the services and applications running in my Homelab. \
This mf is very much a work in progress, so don't judge too hard.

## 💢 Why Docker?
Because I, contrary to popular belief, don't actually hate myself.

## 📚 Sections
* [Authelia](authelia/)
* [HomeAssistant](homeassistant/)
* [JDownloader](jdownloader/)
* [Jellyfin Bot](jellyfin-bot/)
* [Nextcloud AIO](nextcloud-aio/)
* [PaperMC Server](papermc-server/)
* [Pihole](pihole/)
* [qBittorrent VPN](qbittorrent-vpn/)
* [SearXNG](searxng/)
* [Sherlock](sherlock/)
* [Tor Bridge](tor-bridge/)
* [Traefik](traefik/)
* [UptimeKuma](uptimekuma/)
* [Vaultwarden](vaultwarden/)
* [Website](website/)
* [WGEasy](wgeasy/)

## 🚀 Deployment
1. Make sure you have Docker/docker-compose installed
Install with your Linux distro's package-manager or head over to [Dockers homepage](https://www.docker.com/get-started/) to install on Windows.

2. Clone the repo:
```bash
git clone https://github.com/wraaath-homelab/docker-services.git
```

3. Edit the `.env`-files accordingly. Do something like:
```bash
cp .env.example .env
vim .env
```

4. Deploy the Docker-container from the compose file:
```bash
sudo docker-compose up -d
```

---

### Problems?
* Read the `<service>/README.md`

* Check the logs:
```bash
sudo docker-compose logs -f
```

* Consult the official project's page. See `<service>/README.md`

* Submit a [PR](https://github.com/wraaath-homelab/docker-services/pulls) or an [Issue](https://github.com/wraaath-homelab/docker-services/issues) on the repo. And I'll try to help.
