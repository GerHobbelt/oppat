set ph_end=Single-Core PDF Rendering
set ph_end=Single-Core LZMA
set ph_end=Multi-Core Memory Bandwidth
del pat*.png
make && bin\oppat.exe -r ..\oppat_data\lnx\multi7 --cpu_diagram web\haswell_block_diagram.svg --ph_image pat --ph_step_int 0.1 --phase0 "MT L3 RD BW" --phase1 "end phase MT L2 RD BW test"  > tmp.jnk
goto :EOF
make && bin\oppat.exe -r ..\oppat_data\lnx\gb8 --cpu_diagram web\haswell_block_diagram.svg --phase0 "Single-Core AES" --phase1 "%ph_end%" --ph_image pat --ph_step_int 0.1 > tmp.jnk
make && bin\oppat.exe -r ..\oppat_data\lnx\gb8 --cpu_diagram web\haswell_block_diagram.svg --phase AES --ph_image pat --ph_step_int 0.1,30 > tmp.jnk
