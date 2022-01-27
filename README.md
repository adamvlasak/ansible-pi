# Raspberry PI media server / DNS caching blocking server

This repository contains ansible playbook that helps with setup of raspberry pi based home server. It will have following features:

- local caching DNS server with adblocking features and DNS rebind protection
- local DLNA server so that you can watch your movies on TV or such
- local web based music player
- local samba server

## Prerequisities

- your raspberry runs on raspbian (maybe other debian based?) linux
- your PC you can run ansible-playbook commands
- you made MAC and IP reservation in your DHCP server so that IP of raspberry is not changing

## Configuration

Just make sure you can ssh to your raspberry and create `hosts` file (assuming your raspberry has IP `192.168.1.100`):

```
$ echo "192.168.1.100 ansible_user=root" > hosts
```

Then copy `vars.yml.example` to `vars.yml` and customize to your needs. Example vars file assumes you connected raspberry to your router running on `192.168.1.1`. 

> It is required to set this raspberry pi as primary and secondary DNS server in your DHCP settings on your router so that all your devices will get `0.0.0.0` as DNS reply for blocked domains and will see domain specified in `vars.yml` file.

## Provisioning

```
$ make provision
```

in case you don't have `make` installed you can run this command:

```
$ ansible-playbook playbook.yml --diff
```

Profit and enjoy!