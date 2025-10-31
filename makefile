create-linux-bridge:
	sudo ip link add name oixp type bridge
	sudo ip link set dev oixp up
	sudo iptables -I FORWARD -i oixp -j ACCEPT
	sudo iptables -I FORWARD -o oixp -j ACCEPT
	
deploy-lab:
	containerlab deploy

inspect-lab:
	containerlab inspect

destroy-lab:
	containerlab destroy