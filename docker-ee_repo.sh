# Create Docker Repo
export DOCKERURL="https://repos.mirantis.com"
sudo yum-config-manager --add-repo $DOCKERURL/centos/docker-ee.repo
sudo -E sh -c 'echo "$DOCKERURL/centos" > /etc/yum/vars/dockerurl'
sudo -E sh -c 'echo "7" > /etc/yum/vars/dockerosversion'