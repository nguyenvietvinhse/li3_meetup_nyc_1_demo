
if platform?("ubuntu")
  pkgs = %w{ php5 php5-cli php-pear}

  pkgs.each do |pkg|
    package pkg do
      action :install
    end
  end
else
  include_recipe "dotdeb::php53"
end

%w{php5-fpm php5-cgi}.each do |package|
  package "#{package}" do
    action :upgrade
  end
end

cookbook_file "/etc/php5/fpm/php-fpm.conf" do
  source "php5-fpm.conf"
  mode 0644
  owner "root"
  group "root"
end

cookbook_file "/etc/php5/fpm/pool.d/www.conf" do
  source "pool.www.conf"
  mode 0644
  owner "root"
  group "root"
end

service "php5-fpm" do
  action [ :enable, :start ]
end
