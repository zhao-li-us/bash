#!/bin/sh

# This script installs the application dependencies

yum --nobest --assumeyes update
yum --allowerasing --assumeyes install \
  wget
yum clean all
