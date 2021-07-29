library('png')
#set work directory
name <- 'trajectory1'
setwd(paste('path/to/directory/',name,'/',sep=''))

#load RMSD data from auto.tcl scipt (vmd)
data <- read.table('rmsd.dat')

# plot data
plot(data,type='l',xlab='frames',ylab='RMSD',main=paste('RMSD in function the trajectory ',nom, ' frames',sep=''),ylim=c(0,8))

# Save graph 
name <- 'RMSD.png'
dev.print(device = png, file = name, width=600)
dev.off()


## if you have multiple trajectory and you want one figure with all graphs decomment
#setwd('path/to/your/analysis/')
#
## parameter to merge previous picture
#par(mar=rep(0,4))
#nbrcol=4
#layout(matrix(1:7, ncol=nbrcol, byrow=TRUE))
#
##for (i in 1:7){
#  name = paste("./trajectory",i,"/rmsd.png",sep="")
#  img <- readPNG(name)
#  plot(NA,xlim=0:1,ylim=0:1,xaxt="n",yaxt="n",bty="n")
#  rasterImage(img,0,0,1,1)
#}
## save in PDF
#output = paste("rmsd_all",".pdf",sep="")
#dev.print(pdf, output)
#dev.off()
