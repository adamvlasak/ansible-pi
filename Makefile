ansible_cmd := ansible-playbook playbook.yml --diff

lint:
	yamllint .
	ansible-lint

test:
	$(ansible_cmd) --check

provision:
	$(ansible_cmd)
