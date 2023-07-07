# Passwordless SSH access to remote workstation

It is possible to configure a remote PC to allow access from another computer without providing a password every time you connect.\
To do this, you need to use an SSH key instead of a password.
### Check for existing SSH keys
First, check whether there are already keys on the computer you are using to connect to the remote PC:
```bash
ls ~/.ssh
```
If you see files named *id_rsa.pub* or *id_dsa.pub*, jump to [copy your public key to the remote PC](#copy-your-public-key-to-the-remote-pc).

### Generate new SSH keys
To generate new SSH keys enter the following command:
```bash
ssh-keygen
```
Upon entering this command, you will be asked where to save the key. We suggest saving it in the default location (~/.ssh/id_rsa) by pressing Enter. You will also be asked to enter a passphrase, which is optional. The passphrase is used to encrypt the private SSH key, so that if someone else copied the key, they could not impersonate you to gain access. If you choose to use a passphrase, type it here and press Enter, then type it again when prompted. Leave the field empty for no passphrase.

Now look inside your .ssh directory:
```bash
ls ~/.ssh
```
and you should see the files id_rsa and id_rsa.pub:
```bash
authorized_keys  id_rsa  id_rsa.pub  known_hosts
```
The id_rsa file is your private key. Keep this on your computer.

The id_rsa.pub file is your public key. This is what you share with machines that you connect to. When the machine you try to connect to matches up your public and private key, it will allow you to connect.

Take a look at your public key to see what it looks like:
```bash
cat ~/.ssh/id_rsa.pub
```
It should be in the form:
```bash
ssh-rsa <REALLY LONG STRING OF RANDOM CHARACTERS> user@host
```

### Copy your public key to the remote PC
Using the computer which you will be connecting from, append the public key to your authorized_keys file on the remote pc by sending it over SSH:
```bash
ssh-copy-id <USERNAME>@<IP-ADDRESS>
# e.g. ssh-copy-id summit@192.168.0.200
```
Note that for this step you will need to authenticate with your password.

Alternatively, if ssh-copy-id is not available on your system, you can copy the file manually over SSH:

cat ~/.ssh/id_rsa.pub | ssh <USERNAME>@<IP-ADDRESS> 'mkdir -p ~/.ssh && cat >> ~/
