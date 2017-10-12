fstcompile --isymbols=syms.sym --osymbols=syms.sym XCIX_.txt | fstarcsort > XCIX_.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait XCIX_.fst | dot -Tpdf  > XCIX_.pdf

fstcompile --isymbols=syms.sym --osymbols=syms.sym XCIX_aa_.txt | fstarcsort > XCIX_aa_.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait XCIX_aa_.fst | dot -Tpdf  > XCIX_aa_.pdf

fstcompile --isymbols=syms.sym --osymbols=syms.sym batata_XXVIII_.txt | fstarcsort > batata_XXVIII_.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait batata_XXVIII_.fst | dot -Tpdf  > batata_XXVIII_.pdf

fstcompile --isymbols=syms.sym --osymbols=syms.sym ir_tambem_.txt | fstarcsort > ir_tambem_.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait ir_tambem_.fst | dot -Tpdf  > ir_tambem_.pdf
