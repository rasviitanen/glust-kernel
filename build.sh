#!/bin/sh

# For more comments about what's going on here, see the `hello_world` example

set -ex
cd "$(dirname $0)"

cargo build --target wasm32-unknown-unknown

wasm-bindgen target/wasm32-unknown-unknown/debug/webgl.wasm --out-dir wasm/


sudo npm install
npm run serve
