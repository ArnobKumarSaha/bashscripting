#!/bin/bash

# sorting numbers in an array

nums=(3.14, 5.89, 4.3, 8.2, 1.22)
sorted=$(for i in "${nums[@]}" ; do
	echo $i
done | sort )

for i in ${sorted[@]} ; do
	echo $i
done

