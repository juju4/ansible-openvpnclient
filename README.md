[![Actions Status - Master](https://github.com/juju4/ansible-openvpnclient/workflows/AnsibleCI/badge.svg)](https://github.com/juju4/ansible-openvpnclient/actions?query=branch%3Amaster)
[![Actions Status - Devel](https://github.com/juju4/ansible-openvpnclient/workflows/AnsibleCI/badge.svg?branch=devel)](https://github.com/juju4/ansible-openvpnclient/actions?query=branch%3Adevel)

# OpenVPN client ansible role

A simple ansible role to setup openvpn as client.
for example client of server Stouts.openvpn [https://github.com/Stouts/Stouts.openvpn]

## Requirements & Dependencies

### Ansible
It was tested on the following versions:
 * 1.9
 * 2.0
 * 2.2
 * 2.5

### Operating systems

Tested Ubuntu 14.04, 16.04, 18.04 and centos7

## Example Playbook

Just include this role in your list.
For example

```
- host: all
  roles:
    - juju4.openvpnclient
```

## Variables

```
openvpnclient_ext: ovpn
#openvpnclient_ext: conf

#openvpn_config_users:
#    - { server: '', port: 1194, user: '', pass: '', ca: 'ca.crt', localport: 1234, openvpnclient_options: '' }

#openvpn_config_files:
#    - a1.conf
#    - a2.conf
#openvpn_config_keys:
#    - ca.crt
#    - a1.key

```

## Continuous integration

This role has a travis basic test (for github), more advanced with kitchen and also a Vagrantfile (test/vagrant).
Default kitchen config (.kitchen.yml) is lxd-based, while (.kitchen.vagrant.yml) is vagrant/virtualbox based.

Once you ensured all necessary roles are present, You can test with:
```
$ gem install kitchen-ansible kitchen-lxd_cli kitchen-sync kitchen-vagrant
$ cd /path/to/roles/juju4.openvpnclient
$ kitchen verify
$ kitchen login
$ KITCHEN_YAML=".kitchen.vagrant.yml" kitchen verify
```
or
```
$ cd /path/to/roles/juju4.openvpnclient/test/vagrant
$ vagrant up
$ vagrant ssh
```

## Troubleshooting & Known issues


## License

BSD 2-clause

