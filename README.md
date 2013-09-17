# Kickstart Service

If you don't have a full-fledged provisioning system, but you still want to
have some dynamic kickstart files served to your Anaconda installers, you can
use this kickstart service.

It is a OpenShift application capable of serving kickstarts made dynamic by the
use of ERB templates and request parameters.

## How to use it

This kickstart service is capable of providing a complete kickstart file filled
with an hostname you provide in the URL. As of now, two kind of kickstart files
are available:

* RHEL server (`rhel_server`): a generic server machine with EPEL and RPMForge
  repos, Puppet client and the `cloud-init` packages installed on it.
* Puppet master (`puppetmaster`): as above, but also with the server part of Puppet
  installed (but not configured).

Every kickstart flavor installs the `cloud-init` package, so that every machine can rely on
some form of customization to be performed in a private/restricted environment
(like automatic provisioning of certificates and SSH keys).

The general URL scheme for retrieving a kickstart file is the following:
    `http://kickstarts.derecom.it/ks/:kind/:host`
where `kind` is one of the available kinds specified above, and `host` is the
FQDN of the machine being provisioned.

_More docs coming soon_
