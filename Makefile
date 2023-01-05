test:
	ansible-playbook playbook.yml --check --diff

test.dnscrypt_proxy:
	ansible-playbook playbook.yml --check --diff --tags=dnscrypt-proxy,blocked-names

provision:
	ansible-playbook playbook.yml --diff

provision.dnscrypt_proxy:
	ansible-playbook playbook.yml --diff --tags=dnscrypt-proxy,blocked-names
