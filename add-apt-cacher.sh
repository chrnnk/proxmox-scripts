nano /etc/apt/apt.conf.d/02cacher
Acquire::http { Proxy "http://IPADDRESS:3142"; };
