# Default configuration for the AWS OpsWorks cookbook for proftpd
#

instance            = node[:opsworks][:instance]
instance_dns_name   = instance[:public_dns_name]
instance_ip_addr    = instance[:ip]

default[:proftpd] = {
  :user => {
    :name => "CHANGEME",
    :password => "CHANGEME"
  },
  :dbuser => {
    :name => "CHANGEME",
    :password => "CHANGEME"
  },
  :group => {
    :name => "ftpgroup"
  },
  :dbname => "CHANGEME",
  :dbhost => "localhost",
  :passive_ports => "1024 1048",
  :instance_ip => instance_ip_addr,
  :server_name => instance_dns_name
}
