pfx ?= $(HOME)
pwd ?= $(PWD)

src := \
	$(pfx)/.Xresources.d \
	$(pfx)/.Xresources.d/colors \
	$(pfx)/.bin \
	$(pfx)/.config/awesome \
	$(pfx)/.config/fontconfig \
	$(pfx)/.profile.d \
	$(pfx)/.profile \
	$(pfx)/.vim \
	$(pfx)/.vim/bundle/Vundle.vim \
	$(pfx)/.vimrc \
	$(pfx)/.wallpaper \
	$(pfx)/.xinitrc

all: $(src)

$(pfx)/.Xresources.d/colors: $(pfx)/.Xresources.d
	@mkdir -p $(@D)
	cd $(@D) && git clone https://github.com/chriskempson/base16-xresources colors

$(pfx)/.vim/bundle/Vundle.vim: $(pfx)/.vim
	@mkdir -p $(@D)
	cd $(@D) && git clone https://github.com/gmarik/Vundle.vim Vundle.vim
	#vim +BundleInstall +qa

$(pfx)/%:
	@mkdir -p $(@D)
	cd $(@D) && ln -s $(pwd)/$*

clean:
	rm -rf $(src)

full-clean: clean
	rm -rf \
		$(pwd)/.Xresources.d/colors \
		$(pwd)/.vim/bundle

.PHONY: all clean full-clean
