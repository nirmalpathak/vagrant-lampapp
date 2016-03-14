directory "/srv/www/my_site" do
  owner 'root'
  group 'root'
  mode '0755'
  recursive true
  action :create
end

file '/srv/www/my_site/index.php' do
  content '<?php phpinfo(); ?>'
  mode '0755'
  owner 'root'
  group 'root'
end
