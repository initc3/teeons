# hello world with nix, rust, and docker
When searching for "hello world" with nix this excellent blog post, by
[Christine Dodrill](https://christine.website/), comes up:
https://christine.website/blog/how-i-start-nix-2020-03-08.

This directory is just the outcome of walking through the blog post. All
credits are due to [Christine Dodrill](https://christine.website/).

Instances of "helloworld" were renamed to "hellorust" simply to allow other
"hello world" example to sit next to this directory/example, and to avoid
name clashes.

## Notes
In this example, the docker image is built with nix.

Other approaches, such as Trezor, use a Dockerfile that has nix installed and
use nix within the docker image to set dependencies and to build the software.
See [Trezor's Dockerfile](https://github.com/trezor/trezor-firmware/blob/master/ci/Dockerfile)
and how they are using it in
[build-docker.sh](https://github.com/trezor/trezor-firmware/blob/master/build-docker.sh).

Intel linux-sgx also uses an approach similar to Trezor. They have a docker
image with nix, which they use to install dependencies necessary to build
their software.
See https://github.com/intel/linux-sgx/tree/master/linux/reproducibility.
