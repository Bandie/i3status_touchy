# i3status\_touchy [![Build Status](https://travis-ci.org/Bandie/i3status_touchy.svg?branch=master)](https://travis-ci.org/Bandie/i3status_touchy)


## Purpose
A fork of [grub2-se-verifyserv](https://github.com/Bandie/grub2-se-verifyserv). 
A service which helps you to have more status information on i3status. If you need a script to be checked regulary by it's return code, this is something for you.


## Installation
You need gcc or something similar. There is a *not finished* systemd servicefile included. 
To compile and install it you may want to do the following within this project directory:

```
make
sudo make install
```


## Syntax and i3 status integration

```
i3status_touchy ( arguments )

It checks if a program has a specific return code within some time. If it has a file will be touched. If not it will be erased.
The purpose is to integrate it with i3status.

Arguments:

-h, --help                         Shows this here.
-p, --program [program or script]  Executes and checks this program for the return code. (Required)
-t, --touch [filename]             File which will be touched. (Required)
-r, --return [return code]         Listen to this return code. (Default: 0)
-s, --sleep [seconds]              Interval of when the next check should start. (Default: 20)
-v, --verbose                      Show some unnecessary stuff.

i3status integration
====================
You may want to copy paste the following into your i3status.conf:

order += "path_exists SomeStatus"
[...]
path_exist SomeStatus {
	path = "/path/to/file/which/will/be/touched"
}


```

`i3status_touchy --help` will tell you the same btw.


