#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

if $OFOX;
    then
        export LC_ALL='C'
        export FOX_USE_TWRP_RECOVERY_IMAGE_BUILDER=1
        export FOX_VERSION=R11.1_1
        export FOX_VARIANT=A12
        export OF_MAINTAINER='dimasyudha'
fi