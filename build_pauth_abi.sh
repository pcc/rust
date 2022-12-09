#!/bin/sh

CARGO_TARGET_AARCH64_LINUX_ANDROID_RUSTFLAGS='-Ctarget-feature=+paca,+pacg -Cptrauth-calls' ANDROID_SERIAL=localhost:6520 python3 x.py test --target aarch64-linux-android --exclude src/tools/linkchecker --exclude src/test/debuginfo --force-rerun std
