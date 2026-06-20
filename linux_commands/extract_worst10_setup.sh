#!/bin/bash

REPORT=$1

grep -n "Startpoint:\|Endpoint:\|slack" "$REPORT" | head -30
