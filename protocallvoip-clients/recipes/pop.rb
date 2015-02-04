cron "WHMCS Cron for POP" do
  minute "*"
  command "php -q /srv/www/protocallvoip_clients/current/whmcs/pipe/pop.php"
end
