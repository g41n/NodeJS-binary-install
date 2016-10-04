# NodeJS binary install

This is a simple script that allows to install and remove NodeJS binaries installed in `/usr/local`.

## Installation

```
$ git clone https://github.com/g41n/NodeJS-binary-install.git
```

## Usage

To install download NodeJS binaries from the [official website](https://nodejs.org) and then

```
$ cd NodeJS-binary-install
$ ./nodejs_binary_install.sh install ~/Downloads/node-v4.6.0-linux-x64.tar.xz
```

To remove

```
$ ./nodejs_binary_install.sh remove
```
