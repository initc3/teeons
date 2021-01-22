# teeons
Project to explore reproducible enclave builds, in the context of TEEs (Trusted Execution Environments).

## Resources
* https://reproducible-builds.org/
* On why reproducible builds matter: https://reproducible-builds.org/docs/buy-in/
* [rustc 1.44.1 is reproducible in Debian](https://www.reddit.com/r/rust/comments/i4ij47/rustc_1441_is_reproducible_in_debian/)
* Example of reproducible compiler output with Rust: [ripgrep 0.10.0 is reproducible in Debian](https://www.reddit.com/r/rust/comments/afscgo/ripgrep_0100_is_reproducible_in_debian/)
* Bazel: https://github.com/bazelbuild/bazel and https://www.bazel.build/
* Tor blog: [Deterministic Builds Part One: Cyberwar and Global Compromise](https://blog.torproject.org/deterministic-builds-part-one-cyberwar-and-global-compromise)
* Tor blog: [Deterministic Builds Part Two: Technical Details](https://blog.torproject.org/deterministic-builds-part-two-technical-details)
* [Nix + Bazel = fully reproducible, incremental builds](https://www.tweag.io/blog/2018-03-15-bazel-nix/)
* [Implicit Dependencies in Build Systems](https://www.tweag.io/blog/2020-09-16-implicit-build-dependencies/)
* Google asylo: https://github.com/google/asylo

### Nix
* Nix: https://github.com/NixOS/nix and https://nixos.org/nix/
* [Nix Package Manager Guide](https://nixos.org/nix/manual/)

#### Getting Started
From https://christine.website/blog/i-was-wrong-about-nix-2020-02-10:

* Nix Pills: https://nixos.org/nixos/nix-pills/
* Nix Shorts: https://github.com/justinwoo/nix-shorts
* NixOS: For Developers: https://myme.no/posts/2020-01-26-nixos-for-development.html

* [nix.dev](https://nix.dev/index.html)
  > An opinionated guide for developers getting things done using the Nix ecosystem.
  
#### Getting Help
https://nixos.org/community.html

* freenode: https://webchat.freenode.net/#nixos
* discourse: https://discourse.nixos.org/

#### misc
* [Chapter 18. Verifying Build Reproducibility with diff-hook](https://nixos.org/manual/nix/stable/#chap-diff-hook)
* Trezor: [Deterministic firmware build](https://wiki.trezor.io/Developers_guide:Deterministic_firmware_build) -- they use nix, see their [build-docker.sh](https://github.com/trezor/trezor-firmware/blob/master/build-docker.sh)
* Interesting comments on Nix: https://www.reddit.com/r/rust/comments/afscgo/ripgrep_0100_is_reproducible_in_debian/ee1965s/
* https://planet.nixos.org/
* https://weekly.nixos.org/
* Talk by Brian McKenna (contributor to Nix, nixpkgs and HNix): [Functional programming and Nix for reproducible, immutable infrastructure](https://youtu.be/mKXLAbrKrno)

#### nix + rust
* [Rust in nixpkgs docs](https://nixos.org/manual/nixpkgs/stable/#rust)
* https://github.com/nmattia/naersk
* Excellent "Hello World!": https://christine.website/blog/how-i-start-nix-2020-03-08
* [Managing Rust Dependencies with Nix, Part I](https://hadean.com/blog/managing-rust-dependencies-with-nix-part-i/)
* [Managing Rust Dependencies with Nix, Part II](https://hadean.com/blog/managing-rust-dependencies-with-nix-part-ii/)
* [Packaging (Nightly) Rust Application with Nix](https://www.breakds.org/post/build-rust-package/)

#### Nix vs Linux Standard Base
https://nixos.wiki/wiki/Nix_vs._Linux_Standard_Base

#### Nix Flakes
https://www.tweag.io/blog/2020-05-25-flakes/

#### Nix Roots
* Dolstra, E., de Jonge, M. and Visser, E., [Nix: A Safe and Policy-Free System for Software Deployment](https://nixos.org/~eelco/pubs/nspfssd-lisa2004-final.pdf), In Damon, L. (Ed.), [18th Large Installation System Administration Conference (LISA '04)](http://www.usenix.org/events/lisa04/), pages 79–92, Atlanta, Georgia, USA. USENIX, November 2004.
* Prins, P., Suresh, J. and Dolstra, E., [Nix fixes dependency hell on all Linux distributions](https://www.linux.com/news/nix-fixes-dependency-hell-all-linux-distributions), [linux.com](https://www.linux.com/), December 22, 2008
* Dolstra, E., [The Purely Functional SoftwareDeployment Model](https://edolstra.github.io/pubs/phd-thesis.pdf), PhD thesis, Faculty of Science, Utrecht, The Netherlands. January 2006.

#### nix + docker
There are different ways to use both docker and nix. Mainly 2 approaches, as far as I know:

* Nix all-the-way: build docker images with nix.
* Use Nix in a docker container, such that Nix is used to set build dependencies, and to be the basis for the build environment.

Docker images with Nix:
* https://github.com/NixOS/docker
* https://github.com/LnL7/nix-docker
* https://github.com/nix-community/docker-nixpkgs

wiki: https://nixos.wiki/wiki/Docker

**nixery**
> Container registry which transparently builds images using the Nix package manager
* https://nixery.dev/
* https://github.com/google/nixery

### SGX
* https://github.com/kudelskisecurity/sgxfun (slides: https://www.blackhat.com/docs/us-16/materials/us-16-Aumasson-SGX-Secure-Enclaves-In-Practice-Security-And-Crypto-Review.pdf)

https://www.phoronix.com/scan.php?page=news_item&px=GNU-Assembler-LVI-Options

[Three Paper Thursday: What’s Intel SGX Good For?](https://www.lightbluetouchpaper.org/2020/05/07/three-paper-thursday-whats-intel-sgx-good-for/)
Interesting blog post ...

Regarding PoET:
> Unfortunately, this proposal suffers from a critical security economics issue: node maintainers here have a strong incentive to break into their own SGX chips. If an adversary managed to compromise their SGX, they could win the leader election at every round by setting the timeout to 0. The more valuable the network, the stronger the incentive to compromise your own platform.

**Robust Round Robin & sybil attack prevention**
Another approach is discussed: *Efficient Blockchain Consensus with Robust Round Robin* which relies on Remote Attestation for establishing identities, which are then used to form a set of candidates from which a randomly selected node will get to broadcast the next block ... The paper is at https://arxiv.org/pdf/1804.07391.pdf

Another use case discussed is EnclaveDB (https://ieeexplore.ieee.org/stamp/stamp.jsp?tp=&arnumber=8418608)


#### Remote Attestation aka "RA"
* https://github.com/intel/sgx-ra-sample
* https://github.com/cloud-security-research/sgx-ra-tls

**Robust Round Robin / Sybil Attack Prevention**
https://arxiv.org/pdf/1804.07391.pdf

##### PoET
See discussion on PoET in 
[Three Paper Thursday: What’s Intel SGX Good For?](https://www.lightbluetouchpaper.org/2020/05/07/three-paper-thursday-whats-intel-sgx-good-for/).

**Sawtooth PoET**
> The Sawtooth PoET consensus engine implements a CFT (Crash Fault Tolerant) variant of PoET which does not use a TEE. A future version of the consensus engine which also implements full BFT (Byzantine Fault Tolerant) features using an SGX enclave is in development.

* https://github.com/hyperledger/sawtooth-poet
* https://sawtooth.hyperledger.org/docs/core/releases/latest/sysadmin_guide/configure_sgx.html

* https://blockonomi.com/proof-of-elapsed-time-consensus/
* https://bitcoinexchangeguide.com/intels-poet-proof-of-elapsed-time-blockchain-consensus-algorithm/

#### SGX Problems & Limitations
* https://medium.com/@maniacbolts/signal-increases-their-reliance-on-sgx-f46378f336d3
* https://arxiv.org/abs/2006.13353
* https://signal.org/blog/private-contact-discovery/
* https://arstechnica.com/information-technology/2020/06/new-exploits-plunder-crypto-keys-and-more-from-intels-ultrasecure-sgx/


### Frameworks
#### EActors
* github: https://github.com/ibr-ds/EActors
* paper: https://www.ibr.cs.tu-bs.de/users/sartakov/papers/sartakov18eactors.pdf
* talk: https://youtu.be/eigtc7oCxWk
* slides: https://archive.fosdem.org/2020/schedule/event/eactors/attachments/slides/4113/export/events/attachments/eactors/slides/4113/eactors.pdf

### Companies/Services
SCONE: https://scontain.com/
> We enable Confidential computing of containers and host programs using Intel SGX.
