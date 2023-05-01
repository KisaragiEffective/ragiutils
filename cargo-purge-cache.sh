#!/bin/bash
# SPDX-License-Identifier: CC0-1.0
# Performs `cargo clean` in direct-child directory.
# use this script in the IdeaProjects directory.

find -maxdepth 2 -type f -name "Cargo.toml" | xargs -P$(nproc) --replace bash -c 'echo "clean: {}"; cd "$(dirname {})" && cargo clean'
