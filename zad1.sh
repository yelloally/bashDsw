{\rtf1\ansi\ansicpg1252\cocoartf2708
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\froman\fcharset0 Times-Roman;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\sa240\partightenfactor0

\f0\fs24 \cf0 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 function silnia_petla \{\uc0\u8232 \'a0 if [ $1 -eq 0 ]; then\u8232 \'a0\'a0\'a0 echo 1\u8232 \'a0 else\u8232 \'a0\'a0\'a0 local i=$1\u8232 \'a0\'a0\'a0 local result=1\u8232 \'a0\'a0\'a0 while [ $i -gt 1 ]; do\u8232 \'a0\'a0\'a0\'a0\'a0 result=$((result * i))\u8232 \'a0\'a0\'a0\'a0\'a0 i=$((i - 1))\u8232 \'a0\'a0\'a0 done\u8232 \'a0\'a0\'a0 echo $result\u8232 \'a0 fi\u8232 \}\
\'a0\
function silnia_rek \{\uc0\u8232 \'a0 if [ $1 -eq 0 ]; then\u8232 \'a0\'a0\'a0 echo 1\u8232 \'a0 else\u8232 \'a0\'a0\'a0 local result=$(silnia_rek $(($1 - 1)))\u8232 \'a0\'a0\'a0 echo $(($result * $1))\u8232 \'a0 fi\u8232 \}\
\'a0\
if [ -z "$4" ]; then\uc0\u8232 \'a0 read -p "Podaj imi\u281 : " imie\u8232 \'a0 read -p "Podaj nazwisko: " nazwisko\u8232 \'a0 read -p "Podaj rok urodzenia: " rok\u8232 \'a0 read -p "Podaj nazw\u281  pliku: " plik\u8232 else\u8232 \'a0 imie=$1\u8232 \'a0 nazwisko=$2\u8232 \'a0 rok=$3\u8232 \'a0 plik=$4\u8232 fi\
\'a0\
aktualny_rok=$(date +%Y)\uc0\u8232 wiek=$((aktualny_rok - rok))\u8232 echo "Witaj, $imie $nazwisko! Masz $wiek lat."\
\'a0\
silnia_rek=$(silnia_rek $wiek)\uc0\u8232 silnia_petla=$(silnia_petla $wiek)\
}