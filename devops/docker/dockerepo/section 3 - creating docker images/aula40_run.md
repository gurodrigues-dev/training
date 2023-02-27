# adicionando run

RUN apk add --no-cache python2 g++ make

rodrigues@rodrigues-ubuntu:~/Desktop/impacta/devops/docker/dockerepo/section 3 - creating docker images/tests/test-node$ docker build -t test-node .
Sending build context to Docker daemon  4.096kB
Step 1/4 : FROM node:12-alpine
 ---> bb6d28039b8c
Step 2/4 : WORKDIR /app
 ---> Using cache
 ---> 46434b0a8102
Step 3/4 : COPY . .
 ---> dcb5b30db12c
Step 4/4 : RUN apk add --no-cache python2 g++ make
 ---> Running in 8892ed4c56c9
fetch https://dl-cdn.alpinelinux.org/alpine/v3.15/main/x86_64/APKINDEX.tar.gz
fetch https://dl-cdn.alpinelinux.org/alpine/v3.15/community/x86_64/APKINDEX.tar.gz
(1/22) Installing binutils (2.37-r3)
(2/22) Installing libgomp (10.3.1_git20211027-r0)
(3/22) Installing libatomic (10.3.1_git20211027-r0)
(4/22) Installing libgphobos (10.3.1_git20211027-r0)
(5/22) Installing gmp (6.2.1-r1)
(6/22) Installing isl22 (0.22-r0)
(7/22) Installing mpfr4 (4.1.0-r0)
(8/22) Installing mpc1 (1.2.1-r0)
(9/22) Installing gcc (10.3.1_git20211027-r0)
(10/22) Installing musl-dev (1.2.2-r7)
(11/22) Installing libc-dev (0.7.2-r3)
(12/22) Installing g++ (10.3.1_git20211027-r0)
(13/22) Installing make (4.3-r0)
(14/22) Installing libbz2 (1.0.8-r1)
(15/22) Installing expat (2.5.0-r0)
(16/22) Installing libffi (3.4.2-r1)
(17/22) Installing gdbm (1.22-r0)
(18/22) Installing ncurses-terminfo-base (6.3_p20211120-r1)
(19/22) Installing ncurses-libs (6.3_p20211120-r1)
(20/22) Installing readline (8.1.1-r0)
(21/22) Installing sqlite-libs (3.36.0-r0)
(22/22) Installing python2 (2.7.18-r4)
Executing busybox-1.34.1-r5.trigger
OK: 229 MiB in 38 packages
Removing intermediate container 8892ed4c56c9
 ---> 7ba96553217b
Successfully built 7ba96553217b
Successfully tagged test-node:latest

# verificando se temos python2 no ambiente

rodrigues@rodrigues-ubuntu:~/Desktop/impacta/devops/docker/dockerepo/section 3 - creating docker images/tests/test-node$ docker run -it test-node sh
/app # python --version
Python 2.7.18

