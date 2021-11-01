# DC-template
synopsys
Hi guys,
For working with Synopsys Design Compiler (DC) on the sahand server for synthesizing your designs, you can use the following template DC project as your starting point. You will see two directories inside your template project: "rtl" and "synth".
You need to copy and replace your own Verilog files (.v files) inside the rtl folder.
Then you need to go to the synth folder and change the content of "analyze.tcl" with the name of your own Verilog files, similar to the template.
Lastly, you need to change the "set_env" script inside the synth folder as well in the following way:
1. you need to change the design name (the text in front of "export DESIGN=...") with the name of your own top-level design (without ".v" in the name, similar to the template).
2. you need to specify the name of your clock port in your design (whether it is "CLK", "clock", etc.). You do this by changing the text in front of "export CLKNAME=...".
3. Lastly, you need to specify the clock period you want to synthesize your design with. You do this by changing the text in front of "export CLK_PERIOD=...".
Then, when you are still in the synth folder, you need to run the following commands:
source set_env
bash run_synth.sh
After this, you should be able to see your reports inside a folder automatically generated in the synth folder,  with the name of your design and clock period value. Please follow these steps if you need to work with DC. Feel free to ask any questions you encounter while doing these.
