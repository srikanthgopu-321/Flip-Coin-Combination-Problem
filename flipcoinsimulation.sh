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



echo


#uc3 Doublet Combination are HH,TT,HT and TH
declare -A Combination
Combination=(["h"]=0 ["t"]=0 ["hh"]=0 ["tt"]=0 ["ht"]=0 ["th"]=0)
coin=0
no_of_flips=30
flip=0
function head_or_tails()
{
        if [[ $((RANDOM%2)) -eq 1 ]]
        then
                coin=h
        else
                coin=t
        fi
}
function SingleCombination()
{
        for (( i=0; i<$no_of_flips; i++ ))
        do
                head_or_tails
                if [[ $coin == heads ]]
                then
                        Combination[h]=$((${Combination[h]}+1 ))
                else
                        Combination[t]=$((${Combination[t]}+1 ))
                fi
                ((flip++))
        done
        headpercentage=$(( ( ${Combination[h]}*100 )/$flip ))
        tailpercentage=$(( ( ${Combination[t]}*100 )/$flip ))
flip=0
}
function doubleCombination()
{
        while [[ $flip -lt $no_of_flips ]]
        do
                head_or_tails
                output1=$coin
                head_or_tails
                output2=$coin
                if [[ $output1$output2 == hh ]]
                then
                        Combination[hh]=$(( ${Combination[hh]}+1 ))
                elif [[ $output1$output2 == ht ]]
                then
                        Combination[ht]=$(( ${Combination[ht]}+1 ))
                elif [[ $output1$output2 == tt ]]
                then
                        Combination[tt]=$(( ${Combination[tt]}+1 ))
                elif [[ $output1$output2 == th ]]
                then
                        Combination[th]=$(( ${Combination[th]}+1 ))
                fi
        ((flip++))
        done
        hhpercentage=$(( (${Combination[hh]} * 100) / $flip ))
        htpercentage=$(( (${Combination[ht]} * 100) / $flip ))
        ttpercentage=$(( (${Combination[tt]} * 100) / $flip ))
        thpercentage=$(( (${Combination[th]} * 100) / $flip ))

flip=0

}
SingleCombination
echo h t
echo ${Combination["h"]} ${Comination["t"]}

doubleCombination
echo hh ht th tt
echo  ${Combination["hh"]} ${Comination["ht"]} ${Combination["th"]} ${Comination["tt"]}


echo
#uc4 as a simulator,do the same for triplet combination

function tripletCombination()
{
	while [[ $flip -lt $no_of_flips ]]
	do
		head_or_tails
		output1=$coin
		head_or_tails
		output2=$coin
		head_or_tails
		output3=$coin
		if [[ $output1$output2$output3 == hhh ]]
		then
			Combination[hhh]=$(( ${Combination[hhh]}+1 ))
		elif [[ $output1$output2$output3 == hht ]]
		then
			Combination[hht]=$(( ${Combination[hht]}+1 ))
		elif [[ $output1$output2$output3 == htt ]]
		then
			Combination[htt]=$(( ${Combination[htt]}+1 ))
		elif [[ $output1$output2$output3 == hth ]]
		then
			Combination[hth]=$(( ${Combination[hth]}+1 ))
		elif [[ $output1$output2$output3 == thh ]]
		then
			Combination[thh]=$(( ${Combination[thh]}+1 ))
		elif [[ $output1$output2$output3 == tth ]]
		then
			Combination[tth]=$(( ${Combination[tth]}+1 ))
		elif [[ $output1$output2$output3 == tht ]]
		then
			Combination[tht]=$(( ${Combination[tht]}+1 ))
		elif [[ $output1$output2$output3 == ttt ]]
		then
			Combination[ttt]=$(( ${Combination[ttt]}+1 ))
		fi
		((flip++))
	done
	HHHpercentage=$(( (${Combination[hhh]} * 100) / $flip ))
	HHTpercentage=$(( (${Combination[hht]} * 100) / $flip ))
	HTTpercentage=$(( (${Combination[htt]} * 100) / $flip ))
	HTHpercentage=$(( (${Combination[hth]} * 100) / $flip ))
	THHpercentage=$(( (${Combination[thh]} * 100) / $flip ))
	TTHpercentage=$(( (${Combination[tth]} * 100) / $flip ))
	TTTpercentage=$(( (${Combination[ttt]} * 100) / $flip ))
	THTpercentage=$(( (${Combination[tht]} * 100) / $flip ))

flip=0
}
SingleCombination
echo h t
echo ${Combination["h"]} ${Comination["t"]}

doubleCombination
echo hh ht th tt
echo  ${Combination["hh"]} ${Comination["ht"]} ${Combination["th"]} ${Comination["tt"]}

tripletCombination
echo HHH HHT HTH HTT THH THT TTH TTT
echo ${Combination["hhh"]} ${Combination["hht"]} ${Combination["hth"]} ${Combination["htt"]} ${Combination["thh"]} ${Combination["tht"]} ${Combination["tth"]} ${Combination["ttt"]}

















