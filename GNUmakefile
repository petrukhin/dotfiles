.PHONY: all
all: install

.PHONY: install
install: submodules links bundles

.PHONY: links
links:
	pwd | xargs -I {} bash -c "ln -nfs {}/.vim ~/.vim"
	pwd | xargs -I {} bash -c "ln -nfs {}/.vimrc ~/.vimrc"

.PHONY: bundles
bundles:
	vim +BundleInstall +qall

.PHONY: submodules
submodules:
	git submodule init
	git submodule update
