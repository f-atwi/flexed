[![Shell](https://img.shields.io/badge/shell-bash%20|%20zsh%20|%20ksh%20-blue.svg)]()
[![Licence](https://img.shields.io/badge/licence-MIT-blue.svg)](https://shields.io/)

# flexed

LXD transport plugin for thefly

Built for [thefly](https://github.com/joknarf/thefly).

## features

The following features are available:

* open your Fly environment inside an LXD container or VM without a manual ssh setup
* keep your Fly plugins, aliases, and shell environment available inside the container
* start an interactive shell in the container with `flylxsh <container>`
* force destination shell using `flylxshb`, `flylxshz`, or `flylxshk`
* use short aliases with `flxsh`, `flxshb`, `flxshz`, `flxshk`
* tab-completion for available LXD containers and VMs (bash)

## Install

* You can install using [thefly](https://github.com/joknarf/thefly):

```shell
fly add f-atwi/flexed
```

## Usage

Open an interactive Fly shell in an LXD container or VM:

```shell
flylxsh <container>
```

Target can be any container or VM name listed by `lxc list`:

```shell
flylxsh my-container    # container name
flylxsh my-vm           # VM name
```

Force the destination shell:

```shell
flylxshb my-container    # bash
flylxshz my-container    # zsh
flylxshk my-container    # ksh
```

Short aliases:

```shell
flxsh my-container
flxshb my-container
flxshz my-container
flxshk my-container
```

## Notes

* this plugin expects Fly to already be loaded in the current shell
* this plugin expects `lxc` to be installed and LXD or Incus to be running
* works with both LXD (`lxc`) and Incus (`lxc` compatibility shim)
* current support targets bash, zsh, and ksh (if available in the container)
* fish is intentionally left for a later step
