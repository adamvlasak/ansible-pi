lint:
	yamllint .
	ansible-lint

test-router:
	ansible-playbook router.yml --diff --check

provision-router:
	ansible-playbook router.yml --diff

test-homelab:
	ansible-playbook homelab.yml --diff --check

provision-homelab:
	ansible-playbook homelab.yml --diff
