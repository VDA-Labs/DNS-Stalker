
DNS-Stalker
========

Creates a fire and forget alerting service in case a domain similar to yours is purchased 
and alerts the admins via an email. 


Cred to [@elceef](https://github.com/elceef) for building dnstwist
-------

See what sort of trouble users can get in trying to type your domain name.
Find similar-looking domains that adversaries can use to attack you. Can detect
typosquatters, phishing attacks, fraud and corporate espionage. Useful as an
additional source of targeted threat intelligence.





DNS-Stalker was adapted from dnstwist 
-------


**Get a leg up on the adversaries phishing!**

**Find your adversary before they find you!**
 

 


How to Install:
------------

**Built on Ubuntu 18.04.06 Desktop**

_Only tested on Ubuntu 16.04!! Proabably will work on other linux.._
_I'll test and update!_



First install git 
```
1. sudo apt install -y git
```
Change directory to /opt/
```
2. cd /opt/
```
git clone!
```
3. git clone https://github.com/VDA-Labs/DNS-Stalker
```
Change directory into clone
```
4. cd /opt/DNS-Stalker/
```
Execute startup script
```
5. sudo ./startup.sh

```


TO DO:
-------
1. Lots--
2. Test on other platforms
<strike>3. Clean up code</strike>
4. Get sleep

<strike>5. Figure out error "dnstwist.py: notice: missing module: dnspython (DNS features limited)"

try:
	import dns.resolver
	from dns.exception import DNSException
	MODULE_DNSPYTHON = True
except ImportError:
	MODULE_DNSPYTHON = False
	pass

^ Let me know if you know.. 
apt install pip
pip install dnspython
-- still nothing --
http://www.dnspython.org/docs/1.15.0/dns.resolver-module.html</strike>

6. Add a domain checking tool for trust-worthiness of domains
7. Make a docker build
8. allow for multiple domains input 
9. re-write all code in python (everyone loves python)
10. add alert capabilites for sms



Contact
-------
Visit us at [vdalabs.com](https://vdalabs.com)

To send questions or comments just drop an e-mail at
[mwilds@vdalabs.com](mailto:mwilds@vdalabs.com)

You can also reach the author via:

- Twitter: [@mattwilds](https://twitter.com/mattwilds)
- LinkedIn: [Matthew Wilds](https://www.linkedin.com/in/matthew-wilds-41085a8b/)

Any feedback is appreciated. If you were able to run the tool and you are happy
with the results just let me know. If you have found some confirmed phishing
domains with this tool and are comfortable with sharing them, also please send
me a message. Thank you.
