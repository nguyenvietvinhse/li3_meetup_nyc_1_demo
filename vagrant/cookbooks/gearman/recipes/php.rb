pkgs = %w{ php-pear libgearman-dev }

pkgs.each do |pkg|
  package pkg do
    action :install
  end
end

case node['platform']
when "debian", "ubuntu"
  # install the gearman pecl
  php_pear "gearman" do
    action :install
    channel "pecl.php.net"
    version "0.8.1"
    preferred_state "beta"
  end

  file "/etc/php5/conf.d/gearman.ini" do
    owner "root"
    group "root"
    mode "0644"
    action :create
    content "extension=gearman.so"
  end
end
