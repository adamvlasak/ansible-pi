ansible_cmd := ansible-playbook playbook.yml --diff

lint:
	yamllint .
	ansible-lint

test:
	$(ansible_cmd) --check

test.dnscrypt_proxy:
	$(ansible_cmd) --check --tags=dnscrypt-proxy,blocked-names

test.minidlna:
	$(ansible_cmd) --check --tags=minidlna

provision:
	$(ansible_cmd)

provision.dnscrypt_proxy:
	$(ansible_cmd) --tags=dnscrypt-proxy,blocked-names

provision.minidlna:
	$(ansible_cmd) --tags=minidlna
