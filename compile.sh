cd $(dirname $(readlink -f "$0"))
spin -a TokenLoss.pml
gcc -DMEMLIM=16384 -DVECTORSZ=16380 -O2 -DXUSAFE -DBITSTATE -DCHECK -g -o pan pan.c
./pan -m20000 -E -c0 -e -n > result/result.txt
ls *.trail | xargs -I {} sh -c "spin -k {} -t TokenLoss.pml > result/{}.txt"
