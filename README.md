# tectia-client
Docker file(s) for tectia-client from ssh.com

If you want to use SSH tectia on MacOS, you may be stucked in the old evolution version. But with docker going almost native on Mac, we can now use our favourite ssh client almost natively.

todo) 
bring up ssh-broker in a second container and link with the tectia-client

install)

1.) clone the repository, download ssh tectia evaluation from http://info.ssh.com/ssh-tectia-client-trial-download or place your licensed version inside the cloned directory.

2.) build the image, e.g.

cd tectia-client

docker build -t joerg/tectia-client .

3.) link this commands with a fancy bash alias inside .bashrc or alternative, e.g.
alias sshg3="docker run -v $HOME/.ssh2:/home/sshclient/.ssh2 -i -t joerg/tectia-client"
alias ssh-keygen-g3="docker run -v $HOME/.ssh2:/home/sshclient/.ssh2 -i -t --entrypoint=/opt/tectia/bin/ssh-keygen-g3 joerg/tectia-client"

4.) have fun using ssh-keygen and sshg3 ;-)

5.) keygen:
ssh-keygen-g3 
Generating 2048-bit rsa key pair
   4 .oOo.oOo.oOo
Key generated.
2048-bit rsa, sshclient@7894932cd979, Tue Dec 13 2016 14:24:37
Passphrase : 
Again      : 
Key is stored with NULL passphrase.
 (You can ignore the following warning if you are generating hostkeys.)
 This is not recommended.
 Don't do this unless you know what you're doing.
 If file system protections fail (someone can access the keyfile), 
 or if the super-user is malicious, your key can be used without 
 the deciphering effort.
Private key saved to /home/sshclient/.ssh2/id_rsa_2048_c
Public key saved to /home/sshclient/.ssh2/id_rsa_2048_c.pub

6.) connect to your host
sshg3 joergkost@192.168.1.1#22

Key label: 2048-bit rsa, joergkost, Tue Sep 27 2016
File name: /home/sshclient/.ssh2/id_rsa_2048_a
Passphrase for the private key: 
Authentication successful.




