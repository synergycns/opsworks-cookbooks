cron "WHMCS Cron" do
  hour "1"
  minute "0"
  command "php -q /srv/www/protocallvoip_clients/current/whmcs/admin/cron.php"
end