#!/usr/bin/env bash

# =============================================================================
#  Helper functions to download dependencies
# =============================================================================


download_vowpal_wabbit_if_needed() {
  if [ ! -d "$VOWPAL_WABBIT_SOURCE_DIR" ]; then
    git clone https://github.com/JohnLangford/vowpal_wabbit.git "$VOWPAL_WABBIT_SOURCE_DIR"
    cd $VOWPAL_WABBIT_SOURCE_DIR
    git checkout tags/8.3.1
  fi
}

download_boost_if_needed() {
  if [ ! -d "$BOOST_SOURCE_DIR" ]; then
    wget --no-check-certificate -q -O "$TRANSIENT_DIR/boost_1_67_0.tar.gz" http://sourceforge.net/projects/boost/files/boost/1.67.0/boost_1_67_0.tar.gz/download
    tar -xzf "$TRANSIENT_DIR/boost_1_67_0.tar.gz"
    mv boost_1_67_0 "$BOOST_SOURCE_DIR"
  fi
}
