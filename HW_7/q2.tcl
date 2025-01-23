check_sec -compile_context spec
analyze -sv09 spec.v
elaborate -bbox_mul 32

check_sec -compile_context imp
analyze -sv09 imp.v
elaborate -bbox_mul 32

reset ~rst
clock clk

check_sec -setup
check_sec -interface
check_sec -prove
check_sec -signoff
