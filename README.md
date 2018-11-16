# Containers Eerywhere!
Here you can find the files used in my talk at the [.NET Conf UY v2018](http://uy.netconf.global/) held in Montevideo, Uruguay on Nov 16th, 2018.

Video coming soon!

The pptx file is just the presentation in case you wanted to see it.

Under the 'bats' folder there are two folders, services and ui. 

The services folder contains the needed batch files to spin up a container with the desired DBMs. There you will see some hardcoded values like the port where they'll be exposed and the password for the root/sa user. Feel free to change that as you wish.

The ui folder contains a set of batch files for processes that actually need a GUI. But before running one of those containers, you need to build the images.  
CMD into one of the folder (let's say Firefox) and run the following command:

`docker build -t firefox .`

That command will create and image named (-t) firefox based on the dockerfile of the current context (.).

To acually see the application running, you'll need to set up an Windows X-Server, I have [VcXsrv](https://sourceforge.net/projects/vcxsrv/) and it works great.

 In order to have a container from the recently created image running, and view its GUI in your Windows machine, you need to set up an environment variable called LINUX_DISPLAY to your host's IP address.

`set LINUX_DISPLAY=192.168.1.1`

After that you just the firefox.bat file, and that's it.