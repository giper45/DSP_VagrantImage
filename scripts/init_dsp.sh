#!/bin/bash
echo "Init DockerSecurityPlayground package";
mkdir /home/vagrant/dsp
# Set vagrant permissions
chown -R vagrant:vagrant /home/vagrant/dsp
chown -R vagrant:vagrant /home/vagrant/DockerSecurityPlayground

cd /home/vagrant/DockerSecurityPlayground
npm install
echo "Create dsp directory"
# Set configuration
echo '{"mainDir":"dsp","name":"dsp","githubURL":"https://gitlab.com/dsp_blackhat/repo.git"}' > /home/vagrant/DockerSecurityPlayground/config/config_user.json
# Set repositories
cd /home/vagrant/dsp
git clone https://github.com/giper45/DSP_Projects.git
git clone https://gitlab.com/dsp_blackhat/repo.git dsp
sh /home/vagrant/dsp/DSP_Projects/.docker-images/pull.sh

