{\rtf1\ansi\ansicpg1252\cocoartf2708
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\fs24 \cf0 if [ ! -f "skrypt.sh" ]; then\
  echo "Plik skrypt.sh nie istnieje!"\
  exit 1\
fi\
\
if [[ ! ":$PATH:" == *":$(pwd):"* ]]; then\
  echo "Dodaj\uc0\u281  \u347 cie\u380 k\u281  $(pwd) do zmiennej PATH"\
  export PATH=$PATH:$(pwd)\
fi\
\
if [ -d "$plik" ]; then\
  echo "Katalog $plik ju\uc0\u380  istnieje. Usuwam..."\
  rm -rf "$plik"\
fi}