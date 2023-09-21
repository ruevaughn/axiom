git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.13.1

asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
apt-get install dirmngr gpg curl gawk
asdf install nodejs 20.6.1
asdf global nodejs 20.6.1
asdf reshim nodejs

asdf plugin add ruby https://github.com/asdf-vm/asdf-ruby.git
apt-get install autoconf patch build-essential rustc libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libgmp-dev libncurses5-dev libffi-dev libgdbm6 libgdbm-dev libdb-dev uuid-dev
asdf install ruby 3.2.2
asdf global ruby 3.2.2
asdf reshim ruby

asdf plugin add python https://github.com/danhper/asdf-python.git
sudo apt update; sudo apt install build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev curl libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev
asdf install python 3.9.18
asdf global python 3.9.18
asdf reshim python

asdf plugin add golang https://github.com/asdf-community/asdf-golang.git
apt install coreutils
asdf install golang 1.21.1
asdf global golang 1.21.1
asdf reshim golang

{
  "builders": [],
  "provisioners": [
    {
      "type": "file",
      "source": "./configs",
      "destination":"/tmp/configs"
    },
    {
      "execute_command": "chmod +x {{ .Path }}; {{ .Vars }} sudo -E sh '{{ .Path }}'",
      "inline": [
        // ... (previous lines as they are),
      ],
      "inline_shebang": "/bin/bash -x",
      "type": "shell"
    },
     {
      "type": "shell",
      "script": "install-asdf.sh",
    },
  ]
}
