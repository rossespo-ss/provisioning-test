# Vagrant / Chef provisioning test

## Prerequisites

* VirtualBox https://www.virtualbox.org/
* Vagrant https://docs.vagrantup.com/v2/installation/
* Chef https://downloads.chef.io/chef-client
* Vagrant Berkshelf plugin - install using ```vagrant plugin install vagrant-berkshelf```


## How to use it

Clone the repo and run ```vagrant up```:

```bash
git clone https://github.com/sponte/provisioning-test
cd provisioning-test
vagrant up
```

After it's been deployed, go to http://localhost:4765/ to verify the results
