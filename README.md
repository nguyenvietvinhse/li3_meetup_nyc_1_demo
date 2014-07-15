# Li3 NYC #1 - Demo
vinh
Grab the example code

    git clone --recursive https://github.com/fuo/li3_meetup_nyc_1_demo.git li3_demo

Start up the VMs

    cd li3_demo/vagrant
    vagrant destroy -f && vagrant up

Check that everything is working at `33.33.33.20`.  You should get the standard lithium home page. Continue by log into the job server:

    vagrant ssh job

change listen address to 33.33.33.21

	sudo vi /etc/default/gearman-job-server

Restart the gearman job server

	sudo service gearman-job-server restart

Finally starting up a worker:	

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
