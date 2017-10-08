fstcompile --isymbols=syms.sym --osymbols=syms.sym  5.txt | fstarcsort > 5.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait 5.fst | dot -Tpdf  > 5.pdf

fstcompile --isymbols=syms.sym --osymbols=syms.sym  6.txt | fstarcsort > 6.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait 6.fst | dot -Tpdf  > 6.pdf

fstcompile --isymbols=syms.sym --osymbols=syms.sym  7.txt | fstarcsort > 7.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait 7.fst | dot -Tpdf  > 7.pdf

##compila tradutor##
fstcompile --isymbols=syms.sym --osymbols=syms.sym romanos-dezenas-L.txt | fstarcsort > romanos-dezenas-L.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait romanos-dezenas-L.fst | dot -Tpdf  > romanos-dezenas-L.pdf

##testes###
fstcompose 5.fst romanos-dezenas-L.fst >  L.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait L.fst | dot -Tpdf > L.pdf

fstcompose 6.fst romanos-dezenas-L.fst > LX.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait LX.fst | dot -Tpdf > LX.pdf

fstcompose 7.fst romanos-dezenas-L.fst > LXX.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait LXX.fst | dot -Tpdf > LXX.pdf
