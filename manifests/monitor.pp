class role::monitor {
  # Baseconfiguration. Should be on all hosts.
  include ::profile::baseconfig
  include ::profile::baseconfig::users

  include ::profile::openstack::maillist
  # Monitoring
  include ::profile::munin::master

  include ::profile::sensu::server
}
