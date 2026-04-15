#!/bin/bash
sudo du / --exclude=/{proc,sys,dev} -abc | sort -n
