#!/bin/sh

echo "provision_node.sh"

cd ~/

git clone https://github.com/N0nki/dotfiles
sh ~/dotfiles/vim/old/setup_oldvim.sh

echo "install java"

echo "cd ~/Downloads/" >> ~/install_java.sh
echo "sudo yum localinstall jdk-8u144-linux-x64.rpm" >> ~/install_java.sh
echo "JAVA_HOME=/usr/java/jdk1.8.0_144" >> /etc/profile.d/java.sh
echo "PATH=$JAVA_HOME/bin:$PATH" >> /etc/profile.d/java.sh
echo "export PATH JAVA_HOME" >> /etc/profile.d/java.sh
echo "export CLASSPATH=." >> /etc/profile.d/java.sh
sudo chmod +x /etc/profile.d/java.sh

echo "install BRITE"

echo "gzip -d BRITE.tar.gz" >> ~/install_BRITE.sh
echo "tar -x < BRITE.tar" >> ~/installer.sh
