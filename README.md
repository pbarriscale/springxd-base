# springxd-base
Spring XD base image used by other images for single node, multi-node, etc...

This image:

* downloads a Spring XD release from spring.io release repository
* unzips to /opt/spring-xd-${XD_VERSION}
* creates a symbolic link from /opt/spring-xd-${XD_VERSION} to /opt/spring-xd
* makes /opt/spring-xd to working directory

Spring XD is setup to be run as root.
