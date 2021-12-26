# Workflows For Rust Projects

A reference for GitHub Action workflows to use on Rust projects:

- [Continuous integration](.github/workflows/ci.yaml)
- [Release](.github/workflows/release.yaml)

Copy, paste and hack away.

## Usage

You either base your own workflows on these by copy & paste _or_ you can call them from your workflow directly.

Here is how you can **re-use** the existing **continuous integration** workflow right away:

```yaml
---
name: CI

on:
  push:
    branches:
      - main
      - master
    paths-ignore:
      - 'docs/**'
      - '**.md'
  pull_request:
    types:
      - opened
      - reopened
      - synchronize
    paths-ignore:
      - 'docs/**'
      - '**.md'

jobs:
  rust-workflows-ci:
    name: CI
    uses: hendrikmaus/rust-workflows/.github/workflows/ci.yaml@v0.8.0

```

## License

This project is released under the terms of the [MIT](https://opensource.org/licenses/MIT) license.
