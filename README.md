# UnlockedEDU Website Front End
Front end for UnlockedEdu

## Developer's Guide

### Developing with [Docker](https://opensource.com/resources/what-docker)
The current docker container used for this project is the latest `python`
container, and that is simply to server html in a way that developers can
easily work on it. Eventually this section of the code will be productionized
and an actual `Dockerfile` will be built. For now, as long as you are running
on a system that has `docker` and `make` installed you should be able to
develop with no problem. Simply run `make run` when you are ready to view the
docker container and navigate to `localhost:8000` to view your changes. You
can simply leave the docker container running and update your code, then
refresh the page.

### Developing in Vagrant
If you are developing on a machine that does not have `docker` and `make`
(Windows for example), or simply don't want to install these tools onto your
machine, there is an alternative.

[Vagrant](https://www.vagrantup.com/) is a virtual machine management tool
that can be used to easily stand up fully configured machines. In order to use
Vagrant you'll need to install [Virtualbox](https://www.virtualbox.org/)
(easiest way forward, if you're hardcore, feel free to try another hypervisor)
and then install the [Vagrant binary](https://www.vagrantup.com/downloads.html).
You can then navigate to the directory of this repository, at the same level
as the provided Vagrantfile, and run the command `vagrant up`. The default
provider has been specified as Virtualbox, but if your machine (mostly likely
a Linux issue) tries to launch it with `kvm` you can always specify the
provider with `vagrant up --provider=virtualbox`. This machine will bind to
port 8000 when launched, and you would simply run the same `make` command from
the `docker` section above to view the website. To navigate to the directory
with the code run `cd /vagrant`. Vagrant mounts your current working directory
to `/vagrant`. You should even be able to edit the files on your local machine
and see them update on `localhost:8000`.
