#!/bin/bash
echo "welcome to Flip Coin Combination "
#uc1 ((RANDOM)) to find heads or tails

if [[ $((RANDOM%2)) -eq 1 ]]
then
	echo heads
else
	echo tails
fi
#uc2 singlet shows heads or tails
#! /bin/bash
singleDict=(["heads"]=0 ["tails"]=0)
headcount=0
tailcount=0
no_of_flips=10
function head_or_tails()
{
        if [[ $((RANDOM%2)) -eq 1 ]]
        then
                echo heads
                coin="heads"
        else
                echo tails
                coin="tails"
        fi
}
function SingleCombination()
{
        for (( i=0; i<$no_of_flips; i++ ))
        do
                head_or_tails
                if [[ $coin == heads ]]
                then
                        singleDict[heads]=$(( ${singleDist[heads]}+1 ))
                        ((headcount++))
                else
                        singleDict[tails]=$(( ${singleDict[tails]}+1 ))
                        ((tailscount++))
                fi
        done
        headpercentage=$(( ($headcount * 100) / $no_of_flips ))
        tailpercentage=$(( ($tailcount * 100) / $no_of_flips ))
}
SingleCombination



