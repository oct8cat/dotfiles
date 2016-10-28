prefix ?= $(HOME)
dotfiles ?= $(PWD)

targets := \
	$(prefix)/.Xresources.d \
	$(prefix)/.Xresources.d/colors \
	$(prefix)/.config/awesome \
	$(prefix)/.profile.d \
	$(prefix)/.profile \
	$(prefix)/.vimrc \
	$(prefix)/.vim \
	$(prefix)/.vim/bundle/Vundle.vim \
	$(prefix)/.wallpaper \
	$(prefix)/.xinitrc

all: $(targets)

$(prefix)/.Xresources.d/colors: $(prefix)/.Xresources.d
	@mkdir -p $(@D)
	cd $(@D) && git clone https://github.com/chriskempson/base16-xresources colors

$(prefix)/.vim/bundle/Vundle.vim: $(prefix)/.vim
	@mkdir -p $(@D)
	cd $(@D) && git clone https://github.com/gmarik/Vundle.vim Vundle.vim
	vim +BundleInstall +qa

$(prefix)/%:
	@mkdir -p $(@D)
	cd $(@D) && ln -s $(dotfiles)/$*

clean:
	rm -rf $(targets)

full-clean: clean
	rm -rf \
		$(dotfiles)/.Xresources.d/colors \
		$(dotfiles)/.vim/bundle

.PHONY: all clean full-clean
