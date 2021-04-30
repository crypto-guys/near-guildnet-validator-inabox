config:
  user.user-data: |
    #cloud-config
    preserve_hostname: false
    fqdn: validator.guildnet.near
    hostname: validator
    manage_resolv_conf: false
    package_update: true
    package_upgrade: true
    packages:
    - apt-transport-https 
    - ca-certificates 
    - gnupg-agent
    - apt-utils
    - software-properties-common
    - curl
    - wget
    - zip
    - unzip
    - gzip
    - tar
    - jq
    - git
    - whois
    - net-tools
    - mlocate
    - nano
    - unattended-upgrades
    groups:
    - cloud-users: []
    - near: []
    users:
    - name: neard
      gecos: service
      no_user_group: false
      homedir: /home/neard
      primary_group: near
      groups: [users, cloud-users, adm, video, plugdev, dip, netdev]
      shell: /bin/bash
      inactive: false
      lock_passwd: true 
      uid: 1000 
    write_files:
    - content: |
        [Unit]
        Description=NEAR Validator Service
        Documentation=https://github.com/nearprotocol/nearcore
        Wants=network-online.target
        After=network-online.target
        [Service]
        Type=exec
        User=neard
        Group=near
        ExecStart=neard --home /home/neard/.near/guildnet run
        Restart=on-failure
        RestartSec=80
        #StandardOutput=append:/var/log/guildnet.log
        [Install]
        WantedBy=multi-user.target
      path: /etc/systemd/system/neard.service
    final_message: "The system is finally up, after $UPTIME seconds"
description: NEAR Validator LXD Profile
devices:
  eth0:
  eth0:
    ipv4.address: 10.10.49.14.2/24  
    nictype: bridged
    parent: lxdbr0
    type: nic
  root:
    path: /
    pool: default
    type: disk
name: validator
