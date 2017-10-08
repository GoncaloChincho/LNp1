fstcompile --isymbols=syms.sym --osymbols=syms.sym  3.txt | fstarcsort > 3.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait 3.fst | dot -Tpdf  > 3.pdf

fstcompile --isymbols=syms.sym --osymbols=syms.sym  9.txt | fstarcsort > 9.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait 9.fst | dot -Tpdf  > 9.pdf

fstcompile --isymbols=syms.sym --osymbols=syms.sym  4.txt | fstarcsort > 4.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait 4.fst | dot -Tpdf  > 4.pdf

##compila tradutor##
fstcompile --isymbols=syms.sym --osymbols=syms.sym romanos-dezenas-X.txt | fstarcsort > romanos-dezenas-X.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait romanos-dezenas-X.fst | dot -Tpdf  > romanos-dezenas-X.pdf

##testes###
fstcompose 3.fst romanos-dezenas-X.fst > XXX.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait XXX.fst | dot -Tpdf > XXX.pdf

fstcompose 9.fst romanos-dezenas-X.fst > XC.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait XC.fst | dot -Tpdf > XC.pdf

fstcompose 4.fst romanos-dezenas-X.fst > XL.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait XL.fst | dot -Tpdf > XL.pdf
