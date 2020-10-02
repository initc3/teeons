# hello world with nix, rust, and docker
When searching for "hello world" with nix this excellent blog post, by
[Christine Dodrill][Christine Dodrill], comes up:
[How I Start: Nix][How I Start: Nix].

This directory is just the outcome of walking through the blog post. All
credits are due to [Christine Dodrill][Christine Dodrill].

Instances of "helloworld" were renamed to "hellorust" simply to allow other
"hello world" examples to sit next to this directory/example, and to avoid
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

## Acknowledgements
This directory is entirely based on the work of
[Christine Dodrill][Christine Dodrill] in her excellent blog post
[How I Start: Nix][How I Start: Nix].

[Christine Dodrill]: https://christine.website/
[How I Start: Nix]: https://christine.website/blog/how-i-start-nix-2020-03-08
