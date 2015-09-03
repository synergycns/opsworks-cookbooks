# Default configuration for the AWS OpsWorks cookbook for proftpd
#

layer               = node[:opsworks][:instance][:layers].first
instance            = node[:opsworks][:layers].fetch(layer)[:instances].first[1]
instance_dns_name   = instance[:public_dns_name]
instance_elastic_ip = instance[:elastic_ip]


default[:proftpd] = {
  :user => {
    :name => "proftpd",
    :password => "proftpd"
  },
  :group => {
    :name => "ftpgroup"
  },
  :folder_path => "/srv/www",
  :passive_ports => "1024 1048",
  :elastic_ip => instance_elastic_ip,
  :server_name => instance_dns_name
}
