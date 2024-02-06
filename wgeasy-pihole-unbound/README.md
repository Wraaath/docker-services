# WGEasy + Pihole + Unbound
This stack combines the Wireguard server and UI from [WGEasy](https://github.com/wg-easy/wg-easy), the DNS sinkhole [Pihole](https://github.com/pi-hole/docker-pi-hole/) and the recursive DNS server [Unbound](https://github.com/NLnetLabs/unbound).

The goal of this stack is the ability to use your Pihole DNS on your home network, and while being connected from the outside with a Wireguard server, and lastly to have Pihole make use of a local Unbound instance for DNS lookups.

TL;DR. I wanted this:

* Wireguard server for clients
* Pihole exposed on local network
* Pihole usable from Wireguard client
* Unbound used as upstream DNS server by Pihole

## WGEasy
[wg-easy/wg-easy](https://github.com/wg-easy/wg-easy) \
I chose this project as my Wireguard server + UI for the following reasons:

* *Easy* setup
* Nice minimal UI for handling Wireguard clients
* Actively maintained
* Good rep

## Pihole + Unbound
[rlabinc/docker-pihole-unbound](https://github.com/origamiofficial/docker-pihole-unbound) \
I wanted a repo that included both Pihole and Unbound, so I didn't need to touch the configuration, and just had an easy deployment. This project fit my criteria:

* Minimal configuration needed (eww gross Unbound configs)
* Actively maintained

### Pihole
Pihole is a great tool not only for blocking requests to ads from your network, but also nescessary for local DNS records.

### Unbound
Why the need for Unbound? What does it do differently than a regular upstrema DNS server from Cloudflare or Google? The [Pihole docs](https://docs.pi-hole.net/guides/dns/unbound/) has a good article on this, that I would recommend you'd read, but in summary the pros -and cons are similar to that of selfhosting a password manager.

|#                                |Local Unbound DNS instance  |Cloudflare DNS|
|---------------------------------|----------------------------|--------------|
|Logging?                         |None/up to you              |[Some](https://www.privacyguides.org/en/dns/#fn:2)|
|Likelyhood of attacks/poisining  |Unlikely target             |Likely target |
|How is an IP of website attained?|[Recursively through authoritative servers](https://docs.pi-hole.net/guides/dns/unbound/#what-does-this-guide-provide)|Their cache   |
|Censorship?                      |None                        |Potentially   |

---
So what you are getting is enhanced privacy, for the tradeoff of a slower inital resolve. By avoiding a centralised DNS server for all your resolves, no DNS authority can fully log the exact path you're visiting.