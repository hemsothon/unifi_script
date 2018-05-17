#!/bin/bash

for i in {1..100} ; do
	printf "$(tput setaf $(($i+1)))This color code $(($i+1))\n";
	printf "$(tput setaf $(($i+3)))This color code $(($i+3))";
done