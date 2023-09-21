{
  "builders": [],
  "provisioners": [
    {
      "type": "file",
      "source": "./configs",
      "destination": "/tmp/configs"
    },
    {
      "execute_command": "chmod +x {{ .Path }}; {{ .Vars }} sudo -E sh '{{ .Path }}'",
      "inline": [
        "echo set debconf to Noninteractive", 
        "echo 'debconf debconf/frontend select Noninteractive' | sudo debconf-set-selections",
        "/usr/bin/cloud-init status --wait",
        "sudo apt-get install fail2ban ufw net-tools zsh zsh-syntax-highlighting zsh-autosuggestions jq build-essential unzip git p7zip libpcap-dev grc -y -qq",
        "useradd -G sudo -s /usr/bin/zsh -m op",
        "mv /tmp/configs/zshrc /home/op/.zshrc",  
        "chown -R op:users /home/op/",
        "curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y",
        "sudo -i -u op <<'EOF'",
        "wget -q https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O - | sh",
        "source /home/op/.zshrc",
        "git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.13.1",
        "/home/op/.asdf/bin/asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git",
        "/home/op/.asdf/bin/asdf install nodejs 20.6.1",
        "/home/op/.asdf/bin/asdf global nodejs 20.6.1",
        "/home/op/.asdf/bin/asdf reshim nodejs",
        "/home/op/.asdf/bin/asdf plugin add ruby https://github.com/asdf-vm/asdf-ruby.git",
        "/home/op/.asdf/bin/asdf install ruby 3.2.2",
        "/home/op/.asdf/bin/asdf global ruby 3.2.2",
        "/home/op/.asdf/bin/asdf reshim ruby",
        "/home/op/.asdf/bin/asdf plugin add python https://github.com/danhper/asdf-python.git",
        "/home/op/.asdf/bin/asdf install python 3.9.18",
        "/home/op/.asdf/bin/asdf global python 3.9.18",
        "/home/op/.asdf/bin/asdf reshim python",
        "/home/op/.asdf/bin/asdf plugin add golang https://github.com/asdf-community/asdf-golang.git",
        "/home/op/.asdf/bin/asdf install golang 1.21.1",
        "/home/op/.asdf/bin/asdf global golang 1.21.1",
        "echo '. ~/.asdf/plugins/golang/set-env.zsh' >> /home/op/.zshrc",
        "/home/op/.asdf/bin/asdf reshim golang",
        "EOF",
        "apt-get install -y dirmngr gpg curl gawk",
        "sudo apt-get -y install autoconf patch build-essential rustc libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libgmp-dev libncurses5-dev libffi-dev libgdbm6 libgdbm-dev libdb-dev uuid-dev",
        "sudo apt update; sudo apt install -y build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev curl libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev",
        "apt install coreutils"
      ],
      "inline_shebang": "/bin/bash",
      "type": "shell"
    }
  ]
}
