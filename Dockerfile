FROM alpine:latest

RUN apk update && \
	apk upgrade && \
	apk add \
	neovim \
	go \
	git \
	curl \
	python3 \
	neovim-doc \
	gcc \
	python3-dev \
	linux-headers \
	musl-dev \
	python2 \
	python2-dev \
	openssh \
	lftp \
	speedtest-cli

RUN ssh-keygen 
RUN pip3 install --upgrade neovim && pip2 install --upgrade neovim
RUN git config --global user.email "pat@pat.email" && git config --global user.name "Pat Moroney"
RUN go get -u github.com/mdempsky/gocode

#files
#nvim ~/.bashrc
#vim ~/.vimrc
#vim ~/.config/nvim/init.vim
#curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#bashrc:
#export PATH=$PATH:~/go/bin
#export GOPATH="/root/go"
#export PATH=$PATH:$GOPATH/bin
