<!-- Source: https://github.com/hendrikmaus/rust-workflows -->

# Release Process

Bump the version, e.g.:

```shell
# cargo install cargo-bump
cargo bump <major|minor|patch>
export VERSION
VERSION="v$(sed -n 's/^version = \"\(.*\)\"/\1/p' Cargo.toml)"
```

Update lock file:

```shell
cargo check
```

Commit new version:

```shell
git add Cargo.toml Cargo.lock
git commit -m "Bump version -> ${VERSION}"
git push
```

Create a tag and push it:

```shell
git tag -a "${VERSION}" -m "Release ${VERSION}"
git push origin "${VERSION}"
```

GitHub Actions kicks in.

The full process to copy & paste:

```shell
# type this yourself
cargo bump <major|minor|patch>

# then copy & paste the rest
export VERSION
VERSION="v$(sed -n 's/^version = \"\(.*\)\"/\1/p' Cargo.toml)"
cargo check
git add Cargo.toml Cargo.lock
git commit -m "Bump version -> ${VERSION}"
git push
git tag -a "${VERSION}" -m "Release ${VERSION}"
git push origin "${VERSION}"
```
