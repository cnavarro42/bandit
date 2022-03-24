#!/bin/bash

############ THIS IS NOT A SCRIPT BY ITSELF, JUST COMMANDS TO SOLVE EXERCISES ############

#https://overthewire.org/wargames/bandit/

            ####BANDIT CONNECT

ssh bandit0@bandit.labs.overthewire.org -p 2220
bandit0

            ####BANDIT LVL 0 <----

#1
cat readme
#FLAG
boJ9jbbUNNfktd78OOpsqOltutMc3MY1

            ####BANDIT LVL 1 <----
    #1
cat ./-
    #2
cat ./*
    #3
cat /home/bandit1/-
    #FLAG
CV1DtqXWVFXTvM2F0k09SHz0YwRINYA9

            ####BANDIT LVL 2 <----
    #1
cat spaces\ in\ this\ filename
    #2
cat "spaces in this filename"
    #3
cat 'spaces in this filename'
#FLAG
UmHadQclWmgdLOKQ3YNgjWxGoRMb5luK

            ####BANDIT LVL 3 <----
    #1
cat inhere/.hidden
    #2
cd inhere
cat .hidden
    #FLAG
pIwrPrtPN36QITSp3EQaw936yaFoFgAB

            ####BANDIT LVL 4 <----

    #1
file inhere/*
cat inhere/-file07
    #2
file inhere/* | grep ASCII | awk '{print $1}' | tr ':' ' ' | xargs cat
    #FLAG
koReBOKuIDDepwhWk7jZC0RTdopnAYKh

            ####BANDIT LVL 5 <----

    #1
find ./inhere -type f -readable -size 1033c ! -executable | xargs cat | sed 's/ *//'
    #FLAG
DXjZPULLxYr17uwoI01bNLQbtFemEgo7

            ####BANDIT LVL 6 <----

    #1
find / -user bandit7 -group bandit6 -size 33c -type f 2>/dev/null | xargs cat
    #FLAG
HKBPTKQnIay4Fw76bEy8PVxKEDQRKTzs

            ####BANDIT LVL 7 <----

    #1
grep "millionth" data.txt | awk '{print $2}'
    #2
grep "millionth" data.txt | awk 'NF{print $NF}'
    #3
awk '/millionth/' data.txt | awk '{print $2}'
#FLAG
cvX2JJa4CFALtqS87jk27qwqGhBM9plV

            ####BANDIT LVL 8 <----

    #1
sort data.txt | uniq -u
    #FLAG
UsvVyFSfZZWbi6wgC7dAFyFuR6jQQUhR

            ####BANDIT LVL 9 <----
strings data.txt | grep "===" | awk 'NR==4 {print $2}'
    #------
strings data.txt | grep "===" | awk '{print $2}' | tail -n 1
    #FLAG
truKLdjsbJ5g7yyJ2X2R0o3a5HQJFuLk

            ####BANDIT LVL 10 <----
