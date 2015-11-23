#Polipo — a caching web proxy  

Polipo is a small and fast caching web proxy (a web cache, an HTTP proxy, a proxy server).
While Polipo was designed to be used by one person or a small group of people, there is nothing that prevents it from being used by a larger group. 

Website: http://www.pps.univ-paris-diderot.fr/~jch/software/polipo/  

```sh
~$ docker run -d -p 8123:8123 --cap-drop=all konstruktoid/polipo proxyAddress=::0 allowedClients=192.168.1.0/24
```

`./apparmor/` contains apparmor profile and toml file, `--security-opt="apparmor:docker-polipo"`
