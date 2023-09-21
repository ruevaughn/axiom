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
        "set -x",
        "mkdir -p /home/op",
        "/usr/bin/cloud-init status --wait",
        "ufw allow 22",
        "ufw allow 2266",
        "ufw --force enable",
        "echo 'Creating OP user'",
        "useradd -G sudo -s /usr/bin/zsh -m op",
        "mkdir -p /home/op/.ssh /home/op/c2 /home/op/recon/ /home/op/lists /home/op/go /home/op/bin /home/op/.config/ /home/op/.cache /home/op/work/ /home/op/.config/amass",
        "touch /home/op/.sudo_as_admin_successful",
        "mv /tmp/configs/zshrc /home/op/.zshrc",  
        "mv /tmp/configs/asdfrc /home/op/.asdfrf",  
        "mv /tmp/configs/sshd_config /etc/ssh/sshd_config",
        "mv /tmp/configs/authorized_keys /home/op/.ssh/authorized_keys",
        "sudo service sshd restart",
        "git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.13.1",
        "chown -R op:users /home/op/",
        "sudo apt-get update",
        "sudo apt-get install -y autoconf patch build-essential rustc libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libgmp-dev libncurses5-dev libffi-dev libgdbm6 libgdbm-dev libdb-dev uuid-dev coreutils dirmngr gpg curl gawk",
        "sudo -i -u op <<'EOF'",
        "source /home/op/.zshrc",
        "git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.13.1",
        "asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git",
        "asdf install nodejs 20.6.1",
        "asdf global nodejs 20.6.1",
        "asdf reshim nodejs",
        "asdf plugin add ruby https://github.com/asdf-vm/asdf-ruby.git",
        "asdf install ruby 3.2.2",
        "asdf global ruby 3.2.2",
        "asdf reshim ruby",
        "asdf plugin add python https://github.com/danhper/asdf-python.git",
        "asdf install python 3.9.18",
        "asdf global python 3.9.18",
        "asdf reshim python",
        "asdf plugin add golang https://github.com/asdf-community/asdf-golang.git",
        "asdf install golang 1.21.1",
        "asdf global golang 1.21.1",
        "asdf reshim golang",
        "EOF"
      ],
      "inline_shebang": "/bin/bash -x",
      "type": "shell"
    }
  ]
}
