#!/bin/sh

# to be run from the root bedrock2 directory

printf "# autogenerated by $0\n"

printf 'd = dict()\n'

printf '\nd["lightbulb app"] = '
./etc/tagcat_all.sh bedrock2/src/bedrock2Examples | python3 etc/tagcount.py

printf '\nd["program logic"] = '
./etc/tagcat_all.sh bedrock2/src/bedrock2 | python3 etc/tagcount.py

printf '\nd["compiler"] = '
./etc/tagcat_all.sh ./compiler/src/ | python3 etc/tagcount.py

printf '\nd["coqutil"] = '
./etc/tagcat_all.sh ./deps/coqutil | python3 etc/tagcount.py

printf '\nd["kami"] = '
./etc/tagcat_all.sh ./deps/kami | python3 etc/tagcount.py

printf '\nd["riscv-coq"] = '
./etc/tagcat_all.sh ./deps/riscv-coq | python3 etc/tagcount.py

printf '\nd["end-to-end"] = '
./etc/tagcat_all.sh ./end2end | python3 etc/tagcount.py

printf '\nd["processor spec correspondence"] = '
./etc/tagcat_all.sh ./processor | python3 etc/tagcount.py