###TESTS

###SUCCESS
fstcompose test-inputs/0.fst romanos.fst > zero.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait zero.fst | dot -Tpdf > zero.pdf

fstcompose test-inputs/8.fst romanos.fst > VIII.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait VIII.fst | dot -Tpdf > LXXX.pdf

fstcompose test-inputs/3.fst romanos.fst > III.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait III.fst | dot -Tpdf > XXX.pdf

fstcompose test-inputs/9.fst romanos.fst > IX.fst
<<<<<<< HEAD
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait IX.fst | dot -Tpdf > IX.pdf
=======
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait IX.fst | dot -Tpdf > LC.pdf
>>>>>>> 3113ad89b01fbb3fb1e42b685fd4006dec37c0c3

fstcompose test-inputs/4.fst romanos.fst > IV.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait IV.fst | dot -Tpdf > XL.pdf

fstcompose test-inputs/30.fst romanos.fst > XXX.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait XXX.fst | dot -Tpdf > XXX.pdf

fstcompose test-inputs/40.fst romanos.fst > XL.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait XL.fst | dot -Tpdf > XL.pdf

fstcompose test-inputs/57.fst romanos.fst > LVII.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait LVII.fst | dot -Tpdf > LVII.pdf

fstcompose test-inputs/80.fst romanos.fst > LXXX.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait LXXX.fst | dot -Tpdf > LXXX.pdf

fstcompose test-inputs/90.fst romanos.fst > XC.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait XC.fst | dot -Tpdf > XC.pdf
<<<<<<< HEAD

fstcompose test-inputs/93.fst romanos.fst > XCIII.fst
fstdraw --isymbols=syms.sym --osymbols=syms.sym --portrait XCIII.fst | dot -Tpdf > XCIII.pdf
=======
>>>>>>> 3113ad89b01fbb3fb1e42b685fd4006dec37c0c3
