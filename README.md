⭐ Be sure to star!                                                                   Table of contents ↗️

# 🐳 Docker services
These are the services and applications running in my Homelab. \
This mf is very much a work in progress, so don't judge too hard.

# 📚 Sections
* [.template](.template/)
* [Authelia](authelia/)
* [Cloudflare DDNS](cloudflare-ddns/)
* [HomeAssistant](homeassistant/)
* [JDownloader](jdownloader/)
* [Jellyfin Bot](jellyfin-bot/)
* [Nextcloud AIO](nextcloud-aio/)
* [PaperMC Server](papermc-server/)
* [qBittorrent VPN](qbittorrent-vpn/)
* [SearXNG](searxng/)
* [Tor Bridge](tor-bridge/)
* [Traefik](traefik/)
* [UptimeKuma](uptimekuma/)
* [Vaultwarden](vaultwarden/)
* [Website](website/)
* [WGEasy + Pihole + Unbound](wgeasy-pihole-unbound/)

# 🚀 Deployment
1. Make sure you have Docker/docker-compose installed
See my [Ubuntu guide](https://github.com/wraaath-homelab/docker-services/wiki/Docker#ubuntu-install-compose-v2) or [Raspberry Pi OS guide](https://github.com/wraaath-homelab/docker-services/wiki/Docker#raspberry-pi-os-install-compose-v2)

2. Clone the repo:
```bash
git clone https://github.com/wraaath-homelab/docker-services.git
```

3. Edit the `.env`-files accordingly. Do something like:
```bash
cp .env.example .env
vim .env
```

4. Create the `proxy` network for Traefik, Authelia etc...
```bash
sudo docker network create proxy
```

5. Deploy the Docker-container from the compose file:
```bash
sudo docker compose up -d
```

---

## Problems?
* Read the `<service>/README.md`

* Check the logs:
```bash
sudo docker compose logs -f
```

* Consult the official project's page. See `<service>/README.md`

* Submit a ["Pull Request"](https://github.com/wraaath-homelab/docker-services/pulls) or an ["Issue"](https://github.com/wraaath-homelab/docker-services/issues) to the repo. And I'll try to help.
