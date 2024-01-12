cwd := $(shell pwd)

install:
	@echo "Installing software from Brewfile..."
	brew bundle --file=$(cwd)/Brewfile
	@echo "Setting up configurations..."
	mkdir -p ~/.config/fish
	ln -sfn $(cwd)/config.fish ~/.config/fish/config.fish
	@echo "Configurations set."

ml-setup:
	@echo "Setting up ML environment..."
	@if [ -x "$(cwd)/miniconda.sh" ] && [ -x "$(cwd)/ml-setup.sh" ]; then
		$(cwd)/miniconda.sh
		$(cwd)/ml-setup.sh
		@echo "ML environment setup complete."
	@else
		@echo "Error: Miniconda and ML setup scripts not found or not executable."
		@exit 1
	@endif

git-setup:
	@echo "Running Git setup..."
	@if [ -x "$(cwd)/git-setup.sh" ]; then
		$(cwd)/git-setup.sh
	@else
		@echo "Error: Git setup script not found or not executable."
		@exit 1
	@endif

make-php-executable:
	@echo "Making PHP setup script executable..."
	chmod +x $(cwd)/php-setup.sh

php-setup: make-php-executable
	@echo "Running PHP setup..."
	@if [ -x "$(cwd)/php-setup.sh" ]; then
			$(cwd)/php-setup.sh
	@else
			@echo "Error: PHP setup script not found or not executable."
			@exit 1
	@endif

setup: install ml-setup git-setup
	@echo "Full setup complete."
