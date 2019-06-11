source ~/github/kaldi/setenv.sh
lm=lm.arpa
arpa2fst --disambig-symbol=#0  --read-symbol-table=words.txt $lm G.fst
fstdraw --isymbols=words.txt --osymbols=words.txt G.fst | dot -Tps > G.ps
ls
