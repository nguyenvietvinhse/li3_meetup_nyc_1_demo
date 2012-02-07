maintainer       "Christopher Garvis"
maintainer_email "cgarvis@gmail.com"
license          "Apache 2.0"
description      "Installs/Configures gearman libraries and server"
version          "0.0.1"
recipe           "gearman", "gearman job server and development libraries"
recipe           "gearman::server", "gearman job server"
recipe           "gearman::ruby", "gearman gem"
recipe           "gearman::php", "gearman pear package"

%w{ debian }.each do |os|
  supports os
end
