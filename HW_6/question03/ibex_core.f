+define+BOOT_ADDR=8000_0000
+define+TRACE_EXECUTION
+define+RISCV_FORMAL
+define+RVFI
+incdir+../../../ibex/vendor/lowrisc_ip/ip/prim/rtl
+incdir+../../../ibex/vendor/lowrisc_ip/dv/sv/dv_utils

../../../ibex/vendor/lowrisc_ip/ip/prim/rtl/prim_assert.sv
../../../ibex/vendor/lowrisc_ip/ip/prim/rtl/prim_mubi_pkg.sv
../../../ibex/vendor/lowrisc_ip/ip/prim/rtl/prim_cipher_pkg.sv
../../../ibex/vendor/lowrisc_ip/ip/prim/rtl/prim_lfsr.sv
../../../ibex/vendor/lowrisc_ip/ip/prim/rtl/prim_secded_inv_28_22_enc.sv
../../../ibex/vendor/lowrisc_ip/ip/prim/rtl/prim_secded_inv_28_22_dec.sv
../../../ibex/vendor/lowrisc_ip/ip/prim/rtl/prim_secded_inv_39_32_enc.sv
../../../ibex/vendor/lowrisc_ip/ip/prim/rtl/prim_secded_inv_39_32_dec.sv
../../../ibex/vendor/lowrisc_ip/ip/prim/rtl/prim_secded_inv_72_64_enc.sv
../../../ibex/vendor/lowrisc_ip/ip/prim/rtl/prim_secded_inv_72_64_dec.sv
../../../ibex/vendor/lowrisc_ip/ip/prim/rtl/prim_prince.sv
../../../ibex/vendor/lowrisc_ip/ip/prim/rtl/prim_subst_perm.sv
../../../ibex/vendor/lowrisc_ip/ip/prim/rtl/prim_secded_28_22_enc.sv
../../../ibex/vendor/lowrisc_ip/ip/prim/rtl/prim_secded_28_22_dec.sv
../../../ibex/vendor/lowrisc_ip/ip/prim/rtl/prim_secded_39_32_enc.sv
../../../ibex/vendor/lowrisc_ip/ip/prim/rtl/prim_secded_39_32_dec.sv
../../../ibex/vendor/lowrisc_ip/ip/prim/rtl/prim_secded_72_64_enc.sv
../../../ibex/vendor/lowrisc_ip/ip/prim/rtl/prim_secded_72_64_dec.sv
../../../ibex/vendor/lowrisc_ip/ip/prim/rtl/prim_onehot_check.sv

../../../ibex/dv/uvm/core_ibex/common/prim/prim_pkg.sv
../../../ibex/vendor/lowrisc_ip/ip/prim/rtl/prim_util_pkg.sv
../../../ibex/vendor/lowrisc_ip/ip/prim/rtl/prim_secded_pkg.sv
../../../ibex/vendor/lowrisc_ip/ip/prim/rtl/prim_secded_22_16_dec.sv
../../../ibex/vendor/lowrisc_ip/ip/prim/rtl/prim_secded_22_16_enc.sv
../../../ibex/vendor/lowrisc_ip/ip/prim/rtl/prim_secded_64_57_dec.sv
../../../ibex/vendor/lowrisc_ip/ip/prim/rtl/prim_secded_64_57_enc.sv
../../../ibex/vendor/lowrisc_ip/ip/prim/rtl/prim_secded_hamming_22_16_dec.sv
../../../ibex/vendor/lowrisc_ip/ip/prim/rtl/prim_secded_hamming_22_16_enc.sv
../../../ibex/vendor/lowrisc_ip/ip/prim/rtl/prim_secded_hamming_39_32_dec.sv
../../../ibex/vendor/lowrisc_ip/ip/prim/rtl/prim_secded_hamming_39_32_enc.sv
../../../ibex/vendor/lowrisc_ip/ip/prim/rtl/prim_secded_hamming_72_64_dec.sv
../../../ibex/vendor/lowrisc_ip/ip/prim/rtl/prim_secded_hamming_72_64_enc.sv
../../../ibex/vendor/lowrisc_ip/ip/prim/rtl/prim_ram_1p_pkg.sv
../../../ibex/vendor/lowrisc_ip/ip/prim/rtl/prim_ram_1p_adv.sv
../../../ibex/vendor/lowrisc_ip/ip/prim/rtl/prim_ram_1p_scr.sv
../../../ibex/vendor/lowrisc_ip/ip/prim_generic/rtl/prim_generic_ram_1p.sv
../../../ibex/dv/uvm/core_ibex/common/prim/prim_ram_1p.sv
../../../ibex/vendor/lowrisc_ip/ip/prim_generic/rtl/prim_generic_clock_gating.sv
../../../ibex/dv/uvm/core_ibex/common/prim/prim_clock_gating.sv
../../../ibex/vendor/lowrisc_ip/ip/prim_generic/rtl/prim_generic_buf.sv
../../../ibex/dv/uvm/core_ibex/common/prim/prim_buf.sv
../../../ibex/vendor/lowrisc_ip/ip/prim_generic/rtl/prim_generic_clock_mux2.sv
../../../ibex/dv/uvm/core_ibex/common/prim/prim_clock_mux2.sv
../../../ibex/vendor/lowrisc_ip/ip/prim_generic/rtl/prim_generic_flop.sv
../../../ibex/dv/uvm/core_ibex/common/prim/prim_flop.sv

+incdir+../../../ibex/rtl
../../../ibex/rtl/ibex_pkg.sv
../../../ibex/rtl/ibex_tracer_pkg.sv
../../../ibex/rtl/ibex_tracer.sv
../../../ibex/rtl/ibex_alu.sv
../../../ibex/rtl/ibex_branch_predict.sv
../../../ibex/rtl/ibex_compressed_decoder.sv
../../../ibex/rtl/ibex_controller.sv
../../../ibex/rtl/ibex_csr.sv
../../../ibex/rtl/ibex_cs_registers.sv
../../../ibex/rtl/ibex_counter.sv
../../../ibex/rtl/ibex_decoder.sv
../../../ibex/rtl/ibex_dummy_instr.sv
../../../ibex/rtl/ibex_ex_block.sv
../../../ibex/rtl/ibex_wb_stage.sv
../../../ibex/rtl/ibex_id_stage.sv
../../../ibex/rtl/ibex_icache.sv
../../../ibex/rtl/ibex_if_stage.sv
../../../ibex/rtl/ibex_load_store_unit.sv
../../../ibex/rtl/ibex_lockstep.sv
../../../ibex/rtl/ibex_multdiv_slow.sv
../../../ibex/rtl/ibex_multdiv_fast.sv
../../../ibex/rtl/ibex_prefetch_buffer.sv
../../../ibex/rtl/ibex_fetch_fifo.sv
../../../ibex/rtl/ibex_register_file_ff.sv
../../../ibex/rtl/ibex_register_file_fpga.sv
../../../ibex/rtl/ibex_register_file_latch.sv
../../../ibex/rtl/ibex_pmp.sv
../../../ibex/rtl/ibex_core.sv
../../../ibex/rtl/ibex_top.sv