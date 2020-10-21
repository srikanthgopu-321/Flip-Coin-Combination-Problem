#!/bin/bash
echo "welcome to Flip Coin Combination "
#uc1 ((RANDOM)) to find heads or tails

if [[ $((RANDOM%2)) -eq 1 ]]
then
	echo heads
else
	echo tails
fi
