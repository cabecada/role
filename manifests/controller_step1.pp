class role::controller {
  # Baseconfiguration. Should be on all hosts.
  include ::profile::baseconfig
  include ::profile::users
  include ::profile::nfs::client
  
  # Include base services needed by openstack
  include ::profile::memcache
  include ::profile::keepalived
  include ::profile::rabbitmq
  include ::profile::norpf
}
