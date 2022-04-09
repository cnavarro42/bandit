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
    #1
strings data.txt | grep "===" | awk 'NR==4 {print $2}'
    #2
strings data.txt | grep "===" | awk '{print $2}' | tail -n 1
    #FLAG
truKLdjsbJ5g7yyJ2X2R0o3a5HQJFuLk

            ####BANDIT LVL 10 <----

    #1
cat data.txt | base64 -d | awk 'NF{print $NF}'
    #2
strings data.txt | base64 -d | awk 'NF{print $NF}'
    #FLAG
IFukwKGsFW8MOq3IRFqrxE1hxTNEbUPR

            ####BANDIT LVL 11 <----
    #1
strings data.txt | tr 'A-Za-z' 'N-ZA-Mn-za-m' | awk '{print $4}'
    #FLAG
5Te8Y4drgCRfCx8ugdwuEX8KFC6k2EUu

            ####BANDIT LVL 12 <----
    #1
cat data.txt | xxd -r > data
file data
#-data: gzip compressed data, was "data2.bin", last modified: Thu May  7 18:14:30 2020, max compression, from Unix
mv data data.gzip.gz
gzip -d data.gzip.gz
mv data.gzip datab
file data
#-data: bzip2 compressed data, block size = 900k
cp data datab
mv datab datab.bz
bzip2 -d datab.bz
file datab
#-datab: gzip compressed data, was "data4.bin", last modified: Thu May  7 18:14:30 2020, max compression, from Unix
cp datab datac
mv datac datac.gzip.gz
gzip -d datac.gzip.gz
mv datac.gzip datac
file datac
#-datac: POSIX tar archive (GNU)
cp datac datad
mv datad datad.tar
tar -xf datad.tar
mv data5.bin datae
file datae
#-datae: POSIX tar archive (GNU)
cp datae datae.tar
tar -xf datae.tar
mv data6.bin dataf
file dataf
#-dataf: bzip2 compressed data, block size = 900k
mv dataf dataf.bz
bzip2 -d dataf.bz
file dataf
#-dataf: POSIX tar archive (GNU)
cp dataf dataf.tar
tar -xf dataf.tar
mv data8.bin datag
file datag
#-datag: gzip compressed data, was "data9.bin", last modified: Thu May  7 18:14:30 2020, max compression, from Unix
cp datag datag.gzip.gz
gzip -d datag.gzip.gz
mv datag.gzip.gz datag
file datag
#-datag: ASCII text
cat datag | awk 'NF{print $NF}'
    #FLAG
8ZjyCRiBWFYkneahHwxCv3wb2a1ORpYL

            ####BANDIT LVL 13 <----
    #1
ssh -i sshkey.private bandit14@localhost
cat /etc/bandit_pass/bandit14
    #FLAG
4wcYUJFw0k0XLShlDzztnTBHiqxU3b3e

            ####BANDIT LVL 14 <----
    #1
telnet localhost 30000
4wcYUJFw0k0XLShlDzztnTBHiqxU3b3e
    #2
nc localhost 30000
4wcYUJFw0k0XLShlDzztnTBHiqxU3b3e
    #FLAG
BfMYroe26WYalil77FoDi9qh59eK5xNr
            ####BANDIT LVL 15 <----
    #1
openssl s_client -connect localhost:30001
    #FLAG
cluFn7wTiGryunymYOu4RcffSxQluehd
            ####BANDIT LVL 16 <----
    #1
nmap --open -T5 -v -n -p31000-32000 localhost
openssl s_client -connect localhost:31790
#We receive a privatekey, so we make a file:
touch sshkey.private
chmod 600 sshkey.private
ssh -i sshkey.private bandit17@localhost

    #FLAG
xLYVMN9WE5zQ5vHacb0sZEVqbrp7nBTn
            ####BANDIT LVL 17 <----
    #1
diff passwords.old passwords.new

    #FLAG
kfBf3eYk5BPBRzwjqutbbfE887SVc5Yd
            ####BANDIT LVL 18 <----
    #1
ssh bandit18@bandit.labs.overthewire.org -p 2220 /bin/bash
cat readme
    #FLAG
IueksS7Ubh8G3DCwVzrTd8rAVOwq3M5x
            ####BANDIT LVL 19 <----
    #1
./bandit20-do cat /etc/bandit_pass/bandit20
    #FLAG
GbKksEFF4yrVs6il55v6gwY5aVje5f0j
            ####BANDIT LVL 20 <----
    # we need 2 ssh connect
#1: nc -nlvp 2000
#2: ./suconnect 2000
#2: GbKksEFF4yrVs6il55v6gwY5aVje5f0j
    #FLAG
gE269g2h3mw3pwgrj0Ha9Uoqen1c9DGr
            ####BANDIT LVL 20 <----

