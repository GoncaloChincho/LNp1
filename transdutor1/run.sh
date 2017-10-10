fstcompile --isymbols=syms.sym --osymbols=syms.sym letras.txt | fstarcsort > letras.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait letras.fst | dot -Tpdf  > letras.pdf

fstcompile --isymbols=syms.sym --osymbols=syms.sym 28.txt | fstarcsort > 28.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait 28.fst | dot -Tpdf  > 28.pdf

fstcompile --isymbols=syms.sym --osymbols=syms.sym omega.txt | fstarcsort > omega.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait omega.fst | dot -Tpdf  > omega.pdf

##SPACE
fstcompile --isymbols=syms.sym --osymbols=syms.sym space.txt | fstarcsort > space.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait space.fst | dot -Tpdf  > space.pdf
##EX TEXTO
fstcompile --isymbols=syms.sym --osymbols=syms.sym ola_adri_ana_.txt | fstarcsort > ola_adri_anox.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait ola_adri_anox.fst | dot -Tpdf  > ola_adri_anox.pdf

##UNION
fstunion letras.fst ../romanos/romanos.fst > union.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait union.fst | dot -Tpdf  > union.pdf

##CONCAT ROMANOS + SPACE
fstconcat ../romanos/romanos.fst space.fst >concatspace.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait concatspace.fst | dot -Tpdf  > concatspace.pdf

##CONCAT UNION + SPACE
fstconcat union.fst space.fst > concat.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait concat.fst | dot -Tpdf  > concat.pdf

##CLOSURE CONCAT
fstclosure concat.fst > transdutor1.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait transdutor1.fst | dot -Tpdf  > transdutor1.pdf

##TESTES
fstcompose  ola_adri_anox.fst transdutor1.fst > wooo.fst
fstcompose  omega.fst transdutor1.fst > XXVIII.fst

fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait XXVIII.fst | dot -Tpdf > XXVIII.pdf
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait wooo.fst | dot -Tpdf > wooo.pdf



