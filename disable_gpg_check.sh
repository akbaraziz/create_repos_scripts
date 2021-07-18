# disabled gpgcheck
$ cd /etc/yum.repos.d/
$ find . -name "*.repo" -exec sed -i 's/gpgcheck=1/gpgcheck=0/g' {} \;