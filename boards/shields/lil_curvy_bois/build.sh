#!/bin/bash
DIR="$( cd -P "$( dirname "$0" )" && pwd )"
# /Projects/Github/zmk/app/boards/shields/lil_chonky_bois
ROOTDIR=$DIR/../../../../
APPDIR=$DIR/../../../
pushd $ROOTDIR
source zephyr/zephyr-env.sh
popd
pushd $APPDIR
west config build.dir-fmt "build_curvybois/reset" && west build --pristine -b nice_nano_v2 -- -DSHIELD=settings_reset
west config build.dir-fmt "build_curvybois/left" && west build --pristine -b nice_nano_v2 -- -DSHIELD=lil_curvy_bois_left
west config build.dir-fmt "build_curvybois/right" && west build --pristine -b nice_nano_v2 -- -DSHIELD=lil_curvy_bois_right
popd
