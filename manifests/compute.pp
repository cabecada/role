# Installs an openstack compute node
class role::compute {
  # Baseconfiguration. Should be on all hosts.
  include ::profile::baseconfig
  include ::profile::baseconfig::users

  # Storage
  include ::profile::ceph::client

  # Openstack compute
  include ::ntnuopenstack::neutron::compute
  include ::ntnuopenstack::nova::compute
}
