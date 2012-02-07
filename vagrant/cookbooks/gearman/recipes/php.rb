pkgs = %w{ php5-cli php-pear}

pkgs.each do |pkg|
  package pkg do
    action :install
  end
end

# install the mongodb pecl
php_pear "gearman" do
  action :install
end
