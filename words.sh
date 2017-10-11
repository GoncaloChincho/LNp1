###codificador
python word2fst.py alpha_ > codificador/test-inputs/alpha_.txt
python word2fst.py 2_beta_ > codificador/test-inputs/2_beta_.txt
python word2fst.py 23_charlie_ > codificador/test-inputs/23_charlie_.txt
python word2fst.py 48_delta_7_ > codificador/test-inputs/48_delta_7_.txt
python word2fst.py 5_eco_93_ > codificador/test-inputs/5_eco_93_.txt
python word2fst.py foxtrot_61_golf_ > codificador/test-inputs/foxtrot_61_golf_.txt
python word2fst.py glib_45_jocks_29_quiz_57_nymph_16_to_82_vex_73_dwarf_ > codificador/test-inputs/pangramAndNumbers.txt
python word2fst.py how_vexingly_quick_daft_zebras_jump_ > codificador/test-inputs/shortPangram.txt
python word2fst.py an_abyssinian_fly_playing_a_celtic_violin_was_annoyed_by_trashy_flags_on_which_were_the_hebrew_letter_qoph_ > codificador/test-inputs/longPangram.txt

###descodificador
python word2fst.py XlphX_ > descodificador/test-inputs/alpha_.txt
python word2fst.py 11_b9tX_ > descodificador/test-inputs/2_beta_.txt
python word2fst.py 33111_chXrlL9_ > descodificador/test-inputs/23_charlie_.txt
python word2fst.py 342111_d9ltX_211_ > descodificador/test-inputs/48_delta_7_.txt
python word2fst.py 2_9c0_35111_ > descodificador/test-inputs/5_eco_93_.txt
python word2fst.py f0xtr0t_431_g0lf_ > descodificador/test-inputs/foxtrot_61_golf_.txt
python word2fst.py glLb_342_j0cks_3313_q8Lz_4211_nymph_321_t0_433311_v9x_433111_dwXrf_ > descodificador/test-inputs/pangramAndNumbers.txt
python word2fst.py h0w_v9xLngly_q8Lck_dXft_z9brXs_j8mp_ > descodificador/test-inputs/shortPangram.txt
python word2fst.py Xn_XbyssLnLXn_fly_plXyLng_X_c9ltLc_vLolLn_wXs_Xnn0y9d_by_trXshy_flXgs_0n_whLch_w9r9_th9_h9br9w_l9tt9r_q0ph_ > descodificador/test-inputs/longPangram.txt
