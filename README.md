# tectia-client
Docker file(s) for tectia-client from ssh.com

With docker going almost native on Mac, we can now use our favourite ssh tectia client.

1.) clone the repository, download ssh tectia evaluation from http://info.ssh.com/ssh-tectia-client-trial-download or place your licensed version inside the cloned directory. Currently the file is expecting a static named file: "tectia-client-6.4.13.36-linux-x86_64-comm.tar"

2.) build the image, e.g.

cd tectia-client

docker build -t joerg/tectia-client .

3.) link this commands with a fancy bash alias inside .bashrc or alternative, e.g.

alias ssh-keygen-g3="docker --rm run -v $HOME/.ssh2:/home/sshclient/.ssh2 -i -t joerg/tectia-client /opt/tectia/bin/ssh-keygen-g3"

alias sshg3="docker run --rm -v $HOME/.ssh2:/home/sshclient/.ssh2 -i -t joerg/tectia-client /opt/tectia/bin/sshg3"

alias ssh-broker-g3="docker run --rm -v $HOME/.ssh3:/home/sshclient/.ssh2 -d joerg/tectia-client /opt/tectia/bin/ssh-broker-g3 --broker-address==0.0.0.0:22222 --console"


4.) have fun using ssh-keygen and sshg3 ;-)

5.) keygen:
ssh-keygen-g3 
Generating 2048-bit rsa key pair


Private key saved to /home/sshclient/.ssh2/id_rsa_2048_c

Public key saved to /home/sshclient/.ssh2/id_rsa_2048_c.pub

6.) connect to your host

sshg3 joergkost@192.168.1.1#22


Key label: 2048-bit rsa, joergkost, Tue Sep 27 2016
File name: /home/sshclient/.ssh2/id_rsa_2048_a
Passphrase for the private key: 
Authentication successful.


legal notice)
SSH, the SSH logo, TECTIA and the TECTIA logo are either trademarks or registered trademarks of SSH Communications Security. This Website may include names and brands of companies and products which are trademarks of their respective owners






