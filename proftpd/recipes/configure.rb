#
# Cookbook Name:: proftpd
# Recipe:: default
#
#

# Install proftpd package

ftp_user  = node[:proftpd][:user][:name]
ftp_group = node[:proftpd][:group][:name]
password  = node[:proftpd][:user][:password]

Chef::Log.debug("Install proftpd and create group and user")

user node[:proftpd][:user][:name] do
  shell "/sbin/nologin"
end

script "set_locale" do
  interpreter "bash"
  user "root"
  cwd "/"
  code <<-EOH
  groupadd #{ftp_group}
  adduser #{ftp_user} #{ftp_group}
  usermod -p $(echo "#{password}" | openssl passwd -1 -stdin) #{ftp_user}
  EOH
end

template "/etc/proftpd.conf" do
  source "proftpd.erb"
end

template "/etc/proftpd.sql.conf" do
  source "proftpd.sql.erb"
end

template "/etc/proftpd.modules.conf" do
  source "proftpd.modules.erb"
end

# Restart proftpd
service "proftpd" do
  action :restart
end
