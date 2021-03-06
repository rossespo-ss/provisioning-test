# Vagrant / Chef provisioning test

## Prerequisites

* VirtualBox https://www.virtualbox.org/
* Vagrant https://docs.vagrantup.com/v2/installation/
* Chef development kit https://downloads.chef.io/chef-dk/
* Vagrant Berkshelf plugin - install using ```vagrant plugin install vagrant-berkshelf```

## How to use it

Clone the repo and run ```vagrant up```:

```bash
# This is to ensure you have vagrant-berkshel plugin installed
vagrant plugin install vagrant-berkshelf
git clone https://github.com/sponte/provisioning-test
cd provisioning-test
curl -LO https://gist.githubusercontent.com/sponte/a283cc1fbcf1ba4797ed/raw/bddf6d54d7a51e44e5151ded22b9635e45e2e0da/.secret
vagrant up
```

After it's been deployed, go to http://localhost:4765/teamcity/ and login with ```administrator/test```
