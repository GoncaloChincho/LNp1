fstcompile --isymbols=syms.sym --osymbols=syms.sym  3.txt | fstarcsort > 3.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait 3.fst | dot -Tpdf  > 3.pdf

fstcompile --isymbols=syms.sym --osymbols=syms.sym  9.txt | fstarcsort > 9.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait 9.fst | dot -Tpdf  > 9.pdf

fstcompile --isymbols=syms.sym --osymbols=syms.sym  4.txt | fstarcsort > 4.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait 4.fst | dot -Tpdf  > 4.pdf

##compila tradutor##
fstcompile --isymbols=syms.sym --osymbols=syms.sym romanos-digitos-I.txt | fstarcsort > romanos-digitos-I.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait romanos-digitos-I.fst | dot -Tpdf  > romanos-digitos-I.pdf

##testes###
fstcompose 3.fst romanos-digitos-I.fst > III.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait III.fst | dot -Tpdf > III.pdf

fstcompose 9.fst romanos-digitos-I.fst > IX.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait IX.fst | dot -Tpdf > IX.pdf

fstcompose 4.fst romanos-digitos-I.fst > IV.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait IV.fst | dot -Tpdf > IV.pdf
