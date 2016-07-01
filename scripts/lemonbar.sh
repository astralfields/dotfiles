#!/usr/bin/env sh

lemonbuddy_terminate noconfirm
sleep 1
lemonbuddy_wrapper top
lemonbuddy_wrapper bottom
