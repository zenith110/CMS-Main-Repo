DEV_FILE = dev.yml
DEV_DOCKER_COMPOSE=docker-compose -f $(DEV_FILE)
default: build

#==================================================#
# Builds and does other docker functionality #
#==================================================#
build: # Builds using all the dockerfiles and docker-compose provided
	@echo "Building site"
	@$(DEV_DOCKER_COMPOSE) up --build
up:
	@echo "Building site"
	@$(DEV_DOCKER_COMPOSE) up
clean: # Removes all orphans processes
	@echo "Cleaning up processes for docker-compose"
	@$(DEV_DOCKER_COMPOSE) down -v
stop:
	@echo "Putting down container now!"
	@$(DEV_DOCKER_COMPOSE) down 
detached: # Runs the containers in daemon mode
	@echo "Running processes in detached mode!"
	@$(DEV_DOCKER_COMPOSE) up -d --build
update-submodules:
	@echo "Now updating submodules"
	git submodule update --init --recursive
#===============================================#
#     Application specific commands #
#===============================================#
generate-schema: # Runs generate schema command from go makefile
	$(MAKE) -C backend/ generate-schema
