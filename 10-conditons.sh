#!/bin/bash

NUMBER=$1

if [$NUMBER -gt 10 ]
then
echo "Given Number $NUMBER is >: 10"
else
echo "Given Number $NUMBER is <: 10"
fi