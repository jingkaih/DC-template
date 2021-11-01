#!/bin/sh

echo "Running synthesis for design : $DESIGN with clock port : $CLKNAME and technology $TECH"

dc_shell-t -no_gui -64bit -output_log_file ./synth_${DESIGN}_${TECH}.log -x "source -echo -verbose ./run_synth.tcl"
