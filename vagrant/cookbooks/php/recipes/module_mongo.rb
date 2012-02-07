case node['platform']
when "debain", "ubuntu"
  # install the mongodb pecl
  php_pear "mongo" do
    action :install
  end
end
