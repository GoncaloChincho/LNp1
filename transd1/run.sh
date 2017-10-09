fstcompile --isymbols=syms.sym --osymbols=syms.sym letras.txt | fstarcsort > letras.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait letras.fst | dot -Tpdf  > letras.pdf

fstunion letras.fst romanos.fst > union.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait union.fst | dot -Tpdf  > union.pdf


fstcompile --isymbols=syms.sym --osymbols=syms.sym space.txt | fstarcsort > space.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait space.fst | dot -Tpdf  > space.pdf

fstconcat union.fst space.fst > concat.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait concat.fst | dot -Tpdf  > concat.pdf


fstclosure concat.fst > fuck.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait fuck.fst | dot -Tpdf  > fuck.pdf

fstcompile --isymbols=syms.sym --osymbols=syms.sym empty_28_.txt | fstarcsort > empty_28_.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait empty_28_.fst | dot -Tpdf  > empty_28_.pdf


fstcompose fuck.fst empty_28_.fst > wooo.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait wooo.fst | dot -Tpdf > wooo.pdf



