ARG GO_VERSION=1.24

FROM golang:${GO_VERSION}-bookworm

# Install packages and Go language server
RUN apt update && apt install -y --no-install-recommends \
  git \
  sudo \
  openssh-client \
  zsh \
  gcc \
  curl \
  ca-certificates \
  unzip  \
  luarocks \
  && rm -rf /var/lib/apt/lists/*
#RUN apk add -q --update --progress --no-cache git sudo openssh-client zsh neovim gcc fzf
#RUN go get -u -v golang.org/x/tools/cmd/gopls 2>&1

# Setup shell
WORKDIR /root
ENV EDITOR=nvim \
  LANG=pl_PL.UTF-8 \
  LC_ALL=pl_PL.UTF-8
RUN sh -c "$(wget -O- https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" "" --unattended \
  && printf 'ZSH_THEME="robbyrussell"\nENABLE_CORRECTION="false"\nplugins=(git copyfile extract colorize dotenv encode64 golang)\n' | cat /root/.zshrc > /root/.zshrc2 \
  && rm /root/.zshrc \
  && mv /root/.zshrc2 /root/.zshrc \
  && printf '\ncd /workspaces/sdl2-go\n' >> /root/.zshrc \
  && /usr/bin/chsh -s /usr/bin/zsh root \
  && git clone https://github.com/radoslawg/nvim-dotfiles.git /root/.config/nvim
USER root
