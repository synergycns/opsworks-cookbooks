# http://downloads3.ioncube.com/loader_downloads/ioncube_loaders_lin_x86.tar.bz2
# /etc/php5/apache2/conf.d/

bash "ioncube" do
  code <<-EOH
  (cd /tmp; wget http://downloads3.ioncube.com/loader_downloads/ioncube_loaders_lin_x86-64.tar.bz2)
  (cd /tmp; tar jxvf ioncube_loaders_lin_x86-64.tar.bz2)
  (cd /tmp/ioncube; mv ioncube_loader_lin_5.3.so /usr/lib64/php/modules/ioncube_loader.so)
  (chown root:root /usr/lib64/php/modules/ioncube_loader.so)
  EOH
end

template "/etc/php.d/ioncube.ini" do
  source 'ioncube.ini.erb'
end
