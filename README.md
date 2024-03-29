# ⚠️ Archived ⚠️
The project did not turn out to be as useful as anticipated.
Therefore it is no longer maintained.

If you do want to use parts of this, feel free, but make sure to keep the steps updated.

---

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
  pull_request:
    types:
      - opened
      - reopened
      - synchronize

jobs:
  rust-workflows-ci:
    name: CI
    uses: hendrikmaus/rust-workflows/.github/workflows/ci.yaml@v0.8.0

```

The release workflow is too specific to be offered as re-usable workflow.

## License

This project is released under the terms of the [MIT](https://opensource.org/licenses/MIT) license.
