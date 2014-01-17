.PHONY: all
all: install

.PHONY: install
install: submodules links

.PHONY: links
links:
	pwd | xargs -i bash -c "ln -nfs {}/.vim ~/.vim"
	pwd | xargs -i bash -c "ln -nfs {}/.vimrc ~/.vimrc"

.PHONY: submodules
submodules:
	git submodule init
	git submodule update
