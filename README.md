# RMSD Trajectory
Align and calculate RMSD with vmd

# Preriquisites
* VMD
* R

# Calculate the RMSD
Change psf file name, and dcd file name. You can Uncomment for loop to add multiple dcd files.<br>
Then type:
```bash
vmd -e RMSD.tcl
```

**output**
```
.
|--rmsd.dat
```
# plot with R

open R and execute **RMSD_plot.R** script after setting path in script.<br>
you can merge multiple graph on a same pdf file (currently everything is commented).
