

############# Necessary Library
library(RGeostats)
library(Rcpp)
library(sp)
library(geoR)
library(SpatialPack)
library(stats)
library(Matrix)
library(spdep)
library(ape)


###########Computation of global and local index of collocation for diversity indices for 2011 data
file.choose()
setwd("F:\\GICZONE")
Zone1=read.csv("F:\\GICZONE\\Zone1.csv",header=TRUE)

Zone1.db=db.create(Zone1)
head(Zone1.db)
class(Zone1.db)
print(Zone1.db)

########### D
SI.gic(Zone1.db,Zone1.db,name1=4,name2=5,flag.plot=FALSE,col1=1,col2=2,digit=3)
SI.lic(Zone1.db,name1=4,name2=5)
db.plot(Zone1.db,name=4,ylab="Y(NM)",xlab="X(NM)")
db.plot(Zone1.db,name=5,col="blue",add=TRUE)
SI.cgi(Zone1.db, name = 4, flag.plot=TRUE, flag.inertia=TRUE, flag.ellipse=FALSE, col="red", density=1)
SI.cgi(Zone1.db, name = 5, flag.plot=TRUE, flag.inertia=TRUE, flag.ellipse=FALSE, col="blue", density=1)

########### H
SI.gic(Zone1.db,Zone1.db,name1=6,name2=7,flag.plot=FALSE,col1=1,col2=2,digit=3)
SI.lic(Zone1.db,name1=6,name2=7)
db.plot(Zone1.db,name=6,ylab="Y(NM)",xlab="X(NM)")
db.plot(Zone1.db,name=7,col="blue",add=TRUE)
SI.cgi(Zone1.db, name =6, flag.plot=TRUE, flag.inertia=TRUE, flag.ellipse=FALSE, col="red", density=1)
SI.cgi(Zone1.db, name =7, flag.plot=TRUE, flag.inertia=TRUE, flag.ellipse=FALSE, col="blue", density=1)

########### J
SI.gic(Zone1.db,Zone1.db,name1=8,name2=9,flag.plot=FALSE,col1=1,col2=2,digit=3)
SI.lic(Zone1.db,name1=8,name2=9)
db.plot(Zone1.db,name=8,ylab="Y(NM)",xlab="X(NM)")
db.plot(Zone1.db,name=9,col="blue",add=TRUE)
SI.cgi(Zone1.db, name =8, flag.plot=TRUE, flag.inertia=TRUE, flag.ellipse=FALSE, col="red", density=1)
SI.cgi(Zone1.db, name =9, flag.plot=TRUE, flag.inertia=TRUE, flag.ellipse=FALSE, col="blue", density=1)

###########Hour
SI.gic(CZone1.db,CZone1.db,name1=16,name2=17,flag.plot=FALSE,col1=1,col2=2,digit=3)
SI.lic(CZone1.db,name1=16,name2=17)
db.plot(CZone1.db,name=16,ylab="Y(NM)",xlab="X(NM)")
db.plot(CZone1.db,name=17,col="blue",add=TRUE)
SI.cgi(CZone1.db, name =16, flag.plot=TRUE, flag.inertia=TRUE, flag.ellipse=FALSE, col="red", density=1)
SI.cgi(CZone1.db, name =17, flag.plot=TRUE, flag.inertia=TRUE, flag.ellipse=FALSE, col="blue", density=1)


###########Computation of global and local index of collocation for diversity indices for 2012 data
Zone2=read.csv("F:\\GICZONE\\Zone2.csv",header=TRUE)

Zone2.db=db.create(Zone2)
head(Zone2.db)
class(Zone2.db)
print(Zone2.db)


###########D
SI.gic(Zone2.db,Zone2.db,name1=4,name2=5,flag.plot=FALSE,col1=1,col2=2,digit=3)
SI.lic(Zone2.db,name1=4,name2=5)
db.plot(Zone2.db,name=4,ylab="Y(NM)",xlab="X(NM)")
db.plot(Zone2.db,name=5,col="blue",add=TRUE)
SI.cgi(Zone2.db, name = 4, flag.plot=TRUE, flag.inertia=TRUE, flag.ellipse=FALSE, col="red", density=1)
SI.cgi(Zone2.db, name = 5, flag.plot=TRUE, flag.inertia=TRUE, flag.ellipse=FALSE, col="blue", density=1)

###########H
SI.gic(Zone2.db,Zone2.db,name1=6,name2=7,flag.plot=FALSE,col1=1,col2=2,digit=3)
SI.lic(Zone2.db,name1=6,name2=7)
db.plot(Zone2.db,name=6,ylab="Y(NM)",xlab="X(NM)")
db.plot(Zone2.db,name=7,col="blue",add=TRUE)
SI.cgi(Zone2.db, name =6, flag.plot=TRUE, flag.inertia=TRUE, flag.ellipse=FALSE, col="red", density=1)
SI.cgi(Zone2.db, name =7, flag.plot=TRUE, flag.inertia=TRUE, flag.ellipse=FALSE, col="blue", density=1)

###########J
SI.gic(Zone2.db,Zone2.db,name1=8,name2=9,flag.plot=FALSE,col1=1,col2=2,digit=3)
SI.lic(Zone2.db,name1=8,name2=9)
db.plot(Zone2.db,name=8,ylab="Y(NM)",xlab="X(NM)")
db.plot(Zone2.db,name=9,col="blue",add=TRUE)
SI.cgi(Zone2.db, name =8, flag.plot=TRUE, flag.inertia=TRUE, flag.ellipse=FALSE, col="red", density=1)
SI.cgi(Zone2.db, name =9, flag.plot=TRUE, flag.inertia=TRUE, flag.ellipse=FALSE, col="blue", density=1)


###########Hour
SI.gic(CZone2.db,CZone2.db,name1=16,name2=17,flag.plot=FALSE,col1=1,col2=2,digit=3)
SI.lic(CZone2.db,name1=16,name2=17)
db.plot(CZone2.db,name=16,ylab="Y(NM)",xlab="X(NM)")
db.plot(CZone2.db,name=17,col="blue",add=TRUE)
SI.cgi(CZone2.db, name =16, flag.plot=TRUE, flag.inertia=TRUE, flag.ellipse=FALSE, col="red", density=1)
SI.cgi(CZone2.db, name =17, flag.plot=TRUE, flag.inertia=TRUE, flag.ellipse=FALSE, col="blue", density=1)




#####Scatter plots among diversity indices
diversity=read.csv("Diversity.csv")
attach(diversity)

x11(width=7, height=5)
par(mfrow=c(2,3))
plot(H12,D12,xlab="Shannon", ylab="Simpson",pch=8,cex.axis=1.5,cex.lab=1.5)
plot(H12,J12,xlab="Shannon", ylab="Pielou",pch=8,cex.axis=1.5,cex.lab=1.5)
plot(D12,J12,xlab="Simpson", ylab="Pielou",pch=8,cex.axis=1.5,cex.lab=1.5)

plot(H14,D14,xlab="Shannon", ylab="Simpson",pch=8,cex.axis=1.5,cex.lab=1.5)
plot(H14,J14,xlab="Shannon", ylab="Pielou",pch=8,cex.axis=1.5,cex.lab=1.5)
plot(D14,J14,xlab="Simpson", ylab="Pielou",pch=8,cex.axis=1.5,cex.lab=1.5)


x11(width=7, height=7)
par(mfrow=c(3,3))
hist(H12, xlab = "Index", ylab="Frequency", main ="Shannon (2011/12)", breaks=12, ylim=c(0,30),col="lightblue",cex.axis=1.2,cex.lab=1.2)
hist(D12, xlab = "Index", ylab="Frequency", main ="Simpson", breaks=12, ylim=c(0,30),col="lightblue",cex.axis=1.2,cex.lab=1.2)
hist(J12, xlab = "Index", ylab="Frequency", main ="Pielou",  breaks=12, ylim=c(0,30),col="lightblue",cex.axis=1.2,cex.lab=1.2)

hist(H14, xlab = "Index", ylab="Frequency", main ="Shannon", breaks=12, ylim=c(0,30),col="lightblue",cex.axis=1.2,cex.lab=1.2)
hist(D14, xlab = "Index", ylab="Frequency", main ="Simpson", breaks=12, ylim=c(0,30),col="lightblue",cex.axis=1.2,cex.lab=1.2)
hist(J14, xlab = "Index", ylab="Frequency", main ="Pielou",  breaks=12, ylim=c(0,30),col="lightblue",cex.axis=1.2,cex.lab=1.2)

plot(H12,H14,xlim=c(0,2.5),ylim=c(0,2.5),xlab="2011/12", ylab="2013/14",main ="Shannon",pch=8,cex.axis=1.2,cex.lab=1.2)
abline(0,1)
plot(D12,D14,xlab="2011/12", ylab="2013/14",main ="Simpson",pch=8,cex.axis=1.2,cex.lab=1.2)
abline(0,1)
plot(J12,J14,xlab="2011/12", ylab="2013/14",main ="Pielou",pch=8,cex.axis=1.2,cex.lab=1.2)
abline(0,1)


x11(width=7, height=5)
par(mfrow=c(2,3))
plot(log(Hour12),H12,xlab="Log effort", ylab="Diversity Index",main ="Shannon",pch=8,cex.axis=1.2,cex.lab=1.2)
plot(log(Hour12),D12,xlab="Log effort", ylab="Diversity Index",main ="Simpson",pch=8,cex.axis=1.2,cex.lab=1.2)
plot(log(Hour12),J12,xlab="Log effort", ylab="Diversity Index",main ="Pielou",pch=8,cex.axis=1.2,cex.lab=1.2)

plot(log(Hour14),H14,xlab="Log effort", ylab="Diversity Index",main ="Shannon",pch=8,cex.axis=1.2,cex.lab=1.2)
plot(log(Hour14),D14,xlab="Log effort", ylab="Diversity Index",main ="Simpson",pch=8,cex.axis=1.2,cex.lab=1.2)
plot(log(Hour14),J14,xlab="Log effort", ylab="Diversity Index",main ="Pielou",pch=8,cex.axis=1.2,cex.lab=1.2)

















