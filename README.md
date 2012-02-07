# Li3 NYC #1 - Demo

Grab the example code

    git clone https://github.com/cgarvis/li3_meetup_nyc_1_demo

Start up the VMs

    cd li3_demo/vagrant
    vagrant up

Check that everything is working at `33.33.33.20`.  You should get the standard lithium home page. Continue by starting up a worker:

    vagrant ssh job
    cd /var/www/app
    ../libraries/libraries/console/li3 gearman work

Open another terminal and queue up some work

    vagrant ssh app
    cd /var/www/app
    ../libraries/libraries/console/li3 gearman queue Hello '{"subject":"Lithium"}'

If you check your other terminal, you should see `Hello Lithium!`

## Plugins

[li3_filesystem](https://github.com/mariuskubilius/li3_filesystem)

[li4_gearman](https://github.com/cgarvis/li3_gearman)
