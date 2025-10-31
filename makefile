create-linux-bridge:
	sudo ip link add name oixp type bridge
	sudo ip link set dev oixp up

deploy-lab:
	containerlab deploy

inspect-lab:
	containerlab inspect

destroy-lab:
	containerlab destroy