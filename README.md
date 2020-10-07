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

#### misc
* [Chapter 18. Verifying Build Reproducibility with diff-hook](https://nixos.org/manual/nix/stable/#chap-diff-hook)
* Trezor: [Deterministic firmware build](https://wiki.trezor.io/Developers_guide:Deterministic_firmware_build) -- they use nix, see their [build-docker.sh](https://github.com/trezor/trezor-firmware/blob/master/build-docker.sh)
* Interesting comments on Nix: https://www.reddit.com/r/rust/comments/afscgo/ripgrep_0100_is_reproducible_in_debian/ee1965s/
* https://planet.nixos.org/
* https://weekly.nixos.org/

#### nix + rust
* [Rust in nixpkgs docs](https://nixos.org/manual/nixpkgs/stable/#rust)
* https://github.com/nmattia/naersk
* Excellent "Hello World!": https://christine.website/blog/how-i-start-nix-2020-03-08
* [Managing Rust Dependencies with Nix, Part I](https://hadean.com/blog/managing-rust-dependencies-with-nix-part-i/)
* [Managing Rust Dependencies with Nix, Part II](https://hadean.com/blog/managing-rust-dependencies-with-nix-part-ii/)

#### Nix Roots
* Dolstra, E., de Jonge, M. and Visser, E., [Nix: A Safe and Policy-Free System for Software Deployment](https://nixos.org/~eelco/pubs/nspfssd-lisa2004-final.pdf), In Damon, L. (Ed.), [18th Large Installation System Administration Conference (LISA '04)](http://www.usenix.org/events/lisa04/), pages 79–92, Atlanta, Georgia, USA. USENIX, November 2004.
* Prins, P., Suresh, J. and Dolstra, E., [Nix fixes dependency hell on all Linux distributions](https://www.linux.com/news/nix-fixes-dependency-hell-all-linux-distributions), [linux.com](https://www.linux.com/), December 22, 2008
* Dolstra, E., [The Purely Functional SoftwareDeployment Model](https://edolstra.github.io/pubs/phd-thesis.pdf), PhD thesis, Faculty of Science, Utrecht, The Netherlands. January 2006. 
