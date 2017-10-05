fstcompile --isymbols=syms.sym --osymbols=syms.sym  5.txt | fstarcsort > 5.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait 5.fst | dot -Tpdf  > 5.pdf

fstcompile --isymbols=syms.sym --osymbols=syms.sym  6.txt | fstarcsort > 6.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait 6.fst | dot -Tpdf  > 6.pdf

fstcompile --isymbols=syms.sym --osymbols=syms.sym  7.txt | fstarcsort > 7.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait 7.fst | dot -Tpdf  > 7.pdf

##compila tradutor##
fstcompile --isymbols=syms.sym --osymbols=syms.sym romanos-digitos-V.txt | fstarcsort > romanos-digitos-V.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait romanos-digitos-V.fst | dot -Tpdf  > romanos-digitos-V.pdf

##testes###
fstcompose 5.fst romanos-digitos-V.fst >  V.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait V.fst | dot -Tpdf > V.pdf

fstcompose 6.fst romanos-digitos-V.fst > VI.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait VI.fst | dot -Tpdf > VI.pdf

fstcompose 7.fst romanos-digitos-V.fst > VII.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait VII.fst | dot -Tpdf > VII.pdf
