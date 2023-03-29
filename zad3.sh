{\rtf1\ansi\ansicpg1252\cocoartf2708
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\fs24 \cf0 if [ -z "$2" ]; then\
  echo "Podaj numer dnia i miesi\uc0\u261 c jako argumenty."\
  exit 1\
fi\
\
numer_dnia=$1\
miesiac=$2\
\
dzien_tygodnia=$(date -d "$miesiac/$numer_dnia/2022" +%A 2> /dev/null)\
\
if [ $? -eq 0 ]; then\
  echo "Dzie\uc0\u324  tygodnia dla $numer_dnia $miesiac 2022 to: $dzien_tygodnia"\
  echo "Dzie\uc0\u324  tygodnia dla $numer_dnia $miesiac 2022 to: $dzien_tygodnia" >> "$plik/$plik.txt"\
else\
  echo "Podano b\uc0\u322 \u281 dne dane lub wyznaczenie dnia tygodnia si\u281  nie powiod\u322 o." >> "$plik/$plik.txt"\
  exit 1\
fi\
}