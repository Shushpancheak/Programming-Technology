# Part 2: Notifier.

## Steps to compile:
Make sure you have installed necessary packages and their dependencies: 
* CURL (`libcurl4-openssl-dev`)
* OpenSSL (`sudo apt-get install libssl-dev`)
* sendmail (`sudo apt-get install sendmail*`)
* Boost (`sudo apt-get install libboost-system-dev`)
* GnuTLS (`sudo apt-get install gnutls*`)

Maybe you'll need others, then just download them when an error occurs.

```bash
chmod +x build-and-execute.sh
./build-and-execute.sh
```

## Steps to accomplish the task:
* Firstly, I needed to use VPN to create a GMail account.
* Modified main CMakeLIsts.txt by commenting every project but Decorator.
* Created config.ini and filled it with data.
* Modified vmime CMakeLIsts.txt in way that it wouldn't throw error if there's no VMIME_SENDMAIL_PATH by adding FORCE in set (of that) variable.
* Had to install VPN on my machine in order to get ./Decorator work properly.

## GMail: prog.techn2@gmail.com
## Tg bot name: Noskimelian
