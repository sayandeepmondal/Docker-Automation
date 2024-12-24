show_menu(){
	echo "Docker Management System"
	echo "1. Pull a container"
	echo "2. Run a container"
	echo "3. Check the Docker images"
	echo "4. Stop a container"
	echo "5. List running container"
	echo "6. List all running containers"
	echo "7. Exit"
}

pull_container(){
	echo "Enter the container image to pull :"
	read container
	docker pull "$container" && echo "Container $container pulled successfully" || echo "Failed to pull container $container"
}

start_container(){
	echo "Enter the container name or ID to start :"
	read container
	docker run -it "$container" && echo "Container $container started successfully" || echo "Failed to start container $container"
}

image_container(){
	docker images && echo "Docker images fetched successfully" || echo "Failed to fetch docker images"
}

stop_container(){
	echo "Enter the container name or ID to stop :"
	read container
	docker stop "$container" && echo "Container $container stopped successfully" || echo "Failed to stop container $container"
}

list_container(){
	docker ps
}

list_container_all(){
	docker ps -a
}

while:
do:
	show_menu
	read -p "choose an option:" choice
	case $choice in
		1) pull_container;exit0;;
		2) start_container;exit0;;
		3) image_container;exit0;;
		4) stop_container;exit0;;
		5) list_container;exit0;;
		6) list_container_all;exit0;;
		7) echo "exiting.."; exit 0;;
		8) echo "Invalid option:;;
	esac
done
