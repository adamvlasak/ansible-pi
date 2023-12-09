# Raspberry PI Home Server

This repository contains ansible playbook that helps with setup of
Raspberry PI based home server. It will have following features:

- local DHCP server
- strict firewall allowing explicit traffic (web, mail, whois)
- local caching DNS server with adblocking features and DNS rebind
  protection
- local NTP server
- local DLNA server so that you can watch your movies on TV or such
- local web based music player
- local samba server

## Prerequisities

- your Raspberry PI runs on raspbian (maybe other debian based?) linux
- your PC you can run ansible-playbook commands
- you made MAC and IP reservation in your DHCP server so that IP of
  Raspberry PI is not changing

## Configuration

Just make sure you can ssh to your Raspberry PI and create `hosts` file
(assuming your Raspberry PI has IP `192.168.1.100`):

```
$ echo "192.168.1.100 ansible_user=root" > hosts
```

Then copy `vars.yml.example` to `vars.yml` and customize to your needs.
Example vars file assumes you connected Raspberry PI to your router
running on `192.168.1.1`.

> Once your Raspberry PI is configured you can turn off DHCP server
> on your router.

## Provisioning

```
$ make provision
```

in case you don't have `make` installed you can run this command:

```
$ ansible-playbook playbook.yml --diff
```

Profit and enjoy!
