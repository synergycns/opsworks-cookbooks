# Default configuration for the AWS OpsWorks cookbook for proftpd
#

instance            = node[:opsworks][:instance]
instance_dns_name   = instance[:public_dns_name]

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
  :folder_path => "/srv/www",
  :passive_ports => "1024 1048",
  :hostname => "CHANGEME",
  :server_name => instance_dns_name
}
