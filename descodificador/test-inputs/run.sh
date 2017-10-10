##TESTES
fstcompile --isymbols=syms.sym --osymbols=syms.sym 99_.txt | fstarcsort > 99_.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait 99_.fst | dot -Tpdf  > 99_.pdf

fstcompile --isymbols=syms.sym --osymbols=syms.sym 99_aa_.txt | fstarcsort > 99_aa_.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait 99_aa_.fst | dot -Tpdf  > 99_aa_.pdf

fstcompile --isymbols=syms.sym --osymbols=syms.sym batata_28_.txt | fstarcsort > batata_28_.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait batata_28_.fst | dot -Tpdf  > batata_28_.pdf

fstcompile --isymbols=syms.sym --osymbols=syms.sym ir_tambem_.txt | fstarcsort > ir_tambem_.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait ir_tambem_.fst | dot -Tpdf  > ir_tambem_.pdf

fstcompile --isymbols=syms.sym --osymbols=syms.sym arroz_com_maracuja_.txt | fstarcsort > arroz_com_maracuja_.fst
fstdraw    --isymbols=syms.sym --osymbols=syms.sym --portrait arroz_com_maracuja_.fst | dot -Tpdf  > arroz_com_maracuja_.pdf
