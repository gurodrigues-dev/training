# performando melhor o docker

➜  test-node git:(teste) ✗ docker build -t test-node .
Sending build context to Docker daemon  6.144kB
Step 1/7 : FROM node:12-alpine
 ---> bb6d28039b8c
Step 2/7 : WORKDIR /app
 ---> Using cache
 ---> 46434b0a8102
Step 3/7 : COPY package.json .
 ---> 2d0760201142
Step 4/7 : RUN apk add --no-cache python2 g++ make
 ---> Running in e71cc50bc86b
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
Removing intermediate container e71cc50bc86b
 ---> c0d86bd2f695
Step 5/7 : COPY . .
 ---> 608a49697783
Step 6/7 : CMD ["node", "src/index.js"]
 ---> Running in 1968942737a1
Removing intermediate container 1968942737a1
 ---> 1736c78bd043
Step 7/7 : EXPOSE 3000
 ---> Running in e1526de0c661
Removing intermediate container e1526de0c661
 ---> ffc14a2155c5
Successfully built ffc14a2155c5
Successfully tagged test-node:latest

# testando cache 

➜  test-node git:(teste) ✗ docker build -t test-node .
Sending build context to Docker daemon  6.144kB
Step 1/7 : FROM node:12-alpine
 ---> bb6d28039b8c
Step 2/7 : WORKDIR /app
 ---> Using cache
 ---> 46434b0a8102
Step 3/7 : COPY package.json .
 ---> Using cache
 ---> 2d0760201142
Step 4/7 : RUN apk add --no-cache python2 g++ make
 ---> Using cache
 ---> c0d86bd2f695
Step 5/7 : COPY . .
 ---> Using cache
 ---> 608a49697783
Step 6/7 : CMD ["node", "src/index.js"]
 ---> Using cache
 ---> 1736c78bd043
Step 7/7 : EXPOSE 3000
 ---> Using cache
 ---> ffc14a2155c5
Successfully built ffc14a2155c5
Successfully tagged test-node:latest

# criei um novo arquivo, vamos verificar se ele usou os devidos caches e nos novos arquivos não

➜  test-node git:(teste) ✗ docker build -t test-node .
Sending build context to Docker daemon  7.168kB
Step 1/7 : FROM node:12-alpine
 ---> bb6d28039b8c
Step 2/7 : WORKDIR /app
 ---> Using cache
 ---> 46434b0a8102
Step 3/7 : COPY package.json .
 ---> Using cache
 ---> 2d0760201142
Step 4/7 : RUN apk add --no-cache python2 g++ make
 ---> Using cache
 ---> c0d86bd2f695
Step 5/7 : COPY . .
 ---> a7585bb30f85
Step 6/7 : CMD ["node", "src/index.js"]
 ---> Running in 191bf61c3487
Removing intermediate container 191bf61c3487
 ---> 3604254e7be5
Step 7/7 : EXPOSE 3000
 ---> Running in 9db70ca023ca
Removing intermediate container 9db70ca023ca
 ---> f9962b9e78d3
Successfully built f9962b9e78d3
Successfully tagged test-node:latest
