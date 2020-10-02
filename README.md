# teeons
Project to explore reproducible enclave builds, in the context of TEEs (Trusted Execution Environments).

## Resources
* https://reproducible-builds.org/
* On why reproducible builds matter: https://reproducible-builds.org/docs/buy-in/
* [rustc 1.44.1 is reproducible in Debian](https://www.reddit.com/r/rust/comments/i4ij47/rustc_1441_is_reproducible_in_debian/)
* Example of reproducible compiler output with Rust: [ripgrep 0.10.0 is reproducible in Debian](https://www.reddit.com/r/rust/comments/afscgo/ripgrep_0100_is_reproducible_in_debian/)
* Nix: https://github.com/NixOS/nix and https://nixos.org/nix/
* Bazel: https://github.com/bazelbuild/bazel and https://www.bazel.build/
* Interesting comments on Nix: https://www.reddit.com/r/rust/comments/afscgo/ripgrep_0100_is_reproducible_in_debian/ee1965s/
* Tor blog: [Deterministic Builds Part One: Cyberwar and Global Compromise](https://blog.torproject.org/deterministic-builds-part-one-cyberwar-and-global-compromise)
* Tor blog: [Deterministic Builds Part Two: Technical Details](https://blog.torproject.org/deterministic-builds-part-two-technical-details)
* Trezor: [Deterministic firmware build](https://wiki.trezor.io/Developers_guide:Deterministic_firmware_build) -- they use nix, see their [build-docker.sh](https://github.com/trezor/trezor-firmware/blob/master/build-docker.sh)
* [nix.dev](https://nix.dev/index.html)
  > An opinionated guide for developers getting things done using the Nix ecosystem.
* [Nix + Bazel = fully reproducible, incremental builds](https://www.tweag.io/blog/2018-03-15-bazel-nix/)
* [Implicit Dependencies in Build Systems](https://www.tweag.io/blog/2020-09-16-implicit-build-dependencies/)
* [Managing Rust Dependencies with Nix, Part I](https://hadean.com/blog/managing-rust-dependencies-with-nix-part-i/)
* [Managing Rust Dependencies with Nix, Part II](https://hadean.com/blog/managing-rust-dependencies-with-nix-part-ii/)
* [Rust in nixpkgs docs](https://nixos.org/manual/nixpkgs/stable/#rust)

### Nix
* [Nix Package Manager Guide](https://nixos.org/nix/manual/)
* [Chapter 18. Verifying Build Reproducibility with diff-hook](https://nixos.org/manual/nix/stable/#chap-diff-hook)
