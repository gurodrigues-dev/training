- Comando para finalizar todos os containers
```bash
$ docker container rm $(docker ps -aq) --force
```

É compreensível que cada máquina possua uma "central" de rede para seus containers docker cujo chamamos de bridge.

Por exemplo ao abrir dois containers docker ubuntu, podemos pingar um ao outro, porque estao conectados através desta central, desta bridge que em tradução literal se chama ponte.

utilizando um comando para listar nossas centrais de rede docker podemos ver a bridge

```bash
$ docker network ls
```

e inspectando nossos containers podemos ver em sua descrição que além de estaremos conectados a bridge, possuem o mesmo prefixo de ip entao caso tentemos pingar um ao outros será totalmente possível.

-> Iniciando dois containers Ubuntu
```bash
$ docker run -it ubuntu bash 
$ docker run -it ubuntu bash
```

-> Verificando a network
```bash
$ docker network list
```

-> Verificando os containers
```bash
$ docker ps
CONTAINER ID   IMAGE     COMMAND   CREATED          STATUS         PORTS     NAMES
f7e56bf0cd12   ubuntu    "bash"    3 seconds ago    Up 2 seconds             youthful_khorana
f8e9a9a34c23   ubuntu    "bash"    10 seconds ago   Up 9 seconds             happy_jackson
```

-> Inspectando um deles
```bash
$ docker inspect f7e56bf0cd12
[
    {
        "Id": "f7e56bf0cd12206443be64dd24ad3b321f4c1a6e83a11d2994697401b2c256a0",
        "Created": "2023-03-13T17:03:07.779956409Z",
        "Path": "bash",
        "Args": [],
        "State": {
            "Status": "running",
            "Running": true,
            "Paused": false,
            "Restarting": false,
            "OOMKilled": false,
            "Dead": false,
            "Pid": 19121,
            "ExitCode": 0,
            "Error": "",
            "StartedAt": "2023-03-13T17:03:08.020743445Z",
            "FinishedAt": "0001-01-01T00:00:00Z"
        },
        "Image": "sha256:58db3edaf2be6e80f628796355b1bdeaf8bea1692b402f48b7e7b8d1ff100b02",
        "ResolvConfPath": "/var/lib/docker/containers/f7e56bf0cd12206443be64dd24ad3b321f4c1a6e83a11d2994697401b2c256a0/resolv.conf",
        "HostnamePath": "/var/lib/docker/containers/f7e56bf0cd12206443be64dd24ad3b321f4c1a6e83a11d2994697401b2c256a0/hostname",
        "HostsPath": "/var/lib/docker/containers/f7e56bf0cd12206443be64dd24ad3b321f4c1a6e83a11d2994697401b2c256a0/hosts",
        "LogPath": "/var/lib/docker/containers/f7e56bf0cd12206443be64dd24ad3b321f4c1a6e83a11d2994697401b2c256a0/f7e56bf0cd12206443be64dd24ad3b321f4c1a6e83a11d2994697401b2c256a0-json.log",
        "Name": "/youthful_khorana",
        "RestartCount": 0,
        "Driver": "overlay2",
        "Platform": "linux",
        "MountLabel": "",
        "ProcessLabel": "",
        "AppArmorProfile": "docker-default",
        "ExecIDs": null,
        "HostConfig": {
            "Binds": null,
            "ContainerIDFile": "",
            "LogConfig": {
                "Type": "json-file",
                "Config": {}
            },
            "NetworkMode": "default",
            "PortBindings": {},
            "RestartPolicy": {
                "Name": "no",
                "MaximumRetryCount": 0
            },
            "AutoRemove": false,
            "VolumeDriver": "",
            "VolumesFrom": null,
            "ConsoleSize": [
                24,
                80
            ],
            "CapAdd": null,
            "CapDrop": null,
            "CgroupnsMode": "private",
            "Dns": [],
            "DnsOptions": [],
            "DnsSearch": [],
            "ExtraHosts": null,
            "GroupAdd": null,
            "IpcMode": "private",
            "Cgroup": "",
            "Links": null,
            "OomScoreAdj": 0,
            "PidMode": "",
            "Privileged": false,
            "PublishAllPorts": false,
            "ReadonlyRootfs": false,
            "SecurityOpt": null,
            "UTSMode": "",
            "UsernsMode": "",
            "ShmSize": 67108864,
            "Runtime": "runc",
            "Isolation": "",
            "CpuShares": 0,
            "Memory": 0,
            "NanoCpus": 0,
            "CgroupParent": "",
            "BlkioWeight": 0,
            "BlkioWeightDevice": [],
            "BlkioDeviceReadBps": [],
            "BlkioDeviceWriteBps": [],
            "BlkioDeviceReadIOps": [],
            "BlkioDeviceWriteIOps": [],
            "CpuPeriod": 0,
            "CpuQuota": 0,
            "CpuRealtimePeriod": 0,
            "CpuRealtimeRuntime": 0,
            "CpusetCpus": "",
            "CpusetMems": "",
            "Devices": [],
            "DeviceCgroupRules": null,
            "DeviceRequests": null,
            "MemoryReservation": 0,
            "MemorySwap": 0,
            "MemorySwappiness": null,
            "OomKillDisable": null,
            "PidsLimit": null,
            "Ulimits": null,
            "CpuCount": 0,
            "CpuPercent": 0,
            "IOMaximumIOps": 0,
            "IOMaximumBandwidth": 0,
            "MaskedPaths": [
                "/proc/asound",
                "/proc/acpi",
                "/proc/kcore",
                "/proc/keys",
                "/proc/latency_stats",
                "/proc/timer_list",
                "/proc/timer_stats",
                "/proc/sched_debug",
                "/proc/scsi",
                "/sys/firmware"
            ],
            "ReadonlyPaths": [
                "/proc/bus",
                "/proc/fs",
                "/proc/irq",
                "/proc/sys",
                "/proc/sysrq-trigger"
            ]
        },
        "GraphDriver": {
            "Data": {
                "LowerDir": "/var/lib/docker/overlay2/18ceafb7a6ca99139084bfc5149288157d4c31cb2c8874d71d0c46ab42b8a9dd-init/diff:/var/lib/docker/overlay2/022f4cbfa9c9390c1f5b3c2f5da5296d7c46480c44ee49fa9969b98599a7bbed/diff",
                "MergedDir": "/var/lib/docker/overlay2/18ceafb7a6ca99139084bfc5149288157d4c31cb2c8874d71d0c46ab42b8a9dd/merged",
                "UpperDir": "/var/lib/docker/overlay2/18ceafb7a6ca99139084bfc5149288157d4c31cb2c8874d71d0c46ab42b8a9dd/diff",
                "WorkDir": "/var/lib/docker/overlay2/18ceafb7a6ca99139084bfc5149288157d4c31cb2c8874d71d0c46ab42b8a9dd/work"
            },
            "Name": "overlay2"
        },
        "Mounts": [],
        "Config": {
            "Hostname": "f7e56bf0cd12",
            "Domainname": "",
            "User": "",
            "AttachStdin": true,
            "AttachStdout": true,
            "AttachStderr": true,
            "Tty": true,
            "OpenStdin": true,
            "StdinOnce": true,
            "Env": [
                "PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
            ],
            "Cmd": [
                "bash"
            ],
            "Image": "ubuntu",
            "Volumes": null,
            "WorkingDir": "",
            "Entrypoint": null,
            "OnBuild": null,
            "Labels": {
                "org.opencontainers.image.ref.name": "ubuntu",
                "org.opencontainers.image.version": "22.04"
            }
        },
        "NetworkSettings": {
            "Bridge": "",
            "SandboxID": "62a9737f623ff6e5ea3f806f6ce181ffa5375f7e0faa5ed391adaebcb88e1bab",
            "HairpinMode": false,
            "LinkLocalIPv6Address": "",
            "LinkLocalIPv6PrefixLen": 0,
            "Ports": {},
            "SandboxKey": "/var/run/docker/netns/62a9737f623f",
            "SecondaryIPAddresses": null,
            "SecondaryIPv6Addresses": null,
            "EndpointID": "1ad0edbc6586138ed9c498ba19eb4fe0db298643ee03cdf229c8064ee17a03be",
            "Gateway": "172.17.0.1",
            "GlobalIPv6Address": "",
            "GlobalIPv6PrefixLen": 0,
            "IPAddress": "172.17.0.3",
            "IPPrefixLen": 16,
            "IPv6Gateway": "",
            "MacAddress": "02:42:ac:11:00:03",
            "Networks": {
                "bridge": {
                    "IPAMConfig": null,
                    "Links": null,
                    "Aliases": null,
                    "NetworkID": "f95d539c78a03cc5fd3cf511b0ebf2594946c46ad704f0bc78711e874645b8fe",
                    "EndpointID": "1ad0edbc6586138ed9c498ba19eb4fe0db298643ee03cdf229c8064ee17a03be",
                    "Gateway": "172.17.0.1",
                    "IPAddress": "172.17.0.3",
                    "IPPrefixLen": 16,
                    "IPv6Gateway": "",
                    "GlobalIPv6Address": "",
                    "GlobalIPv6PrefixLen": 0,
                    "MacAddress": "02:42:ac:11:00:03",
                    "DriverOpts": null
                }
            }
        }
    }
]
```

Então no final podemos ver que ele possui o IPAddress de 172.17.0, a unica mudança é o sufixo. No caso este container tem o sufixo de 3 e outro de 2. Porém ambos na mesma bridge e com o mesmo prefixo.

-> Instalando ping
```bash
$ apt-get update

$ apt-get install iputils-ping -y

# Testando funcionamento
$ ping
ping: usage error: Destination address required

# 0.3 pingando 0.2
$ ping 172.17.0.2 
PING 172.17.0.2 (172.17.0.2) 56(84) bytes of data.
64 bytes from 172.17.0.2: icmp_seq=1 ttl=64 time=0.130 ms
64 bytes from 172.17.0.2: icmp_seq=2 ttl=64 time=0.036 ms
64 bytes from 172.17.0.2: icmp_seq=3 ttl=64 time=0.037 ms
64 bytes from 172.17.0.2: icmp_seq=4 ttl=64 time=0.035 ms
64 bytes from 172.17.0.2: icmp_seq=5 ttl=64 time=0.026 ms

# 0.2 pingando 0.3
$ ping 172.17.0.2 
PING 172.17.0.2 (172.17.0.2) 56(84) bytes of data.
64 bytes from 172.17.0.2: icmp_seq=1 ttl=64 time=0.130 ms
64 bytes from 172.17.0.2: icmp_seq=2 ttl=64 time=0.036 ms
64 bytes from 172.17.0.2: icmp_seq=3 ttl=64 time=0.037 ms
64 bytes from 172.17.0.2: icmp_seq=4 ttl=64 time=0.035 ms
64 bytes from 172.17.0.2: icmp_seq=5 ttl=64 time=0.026 ms

