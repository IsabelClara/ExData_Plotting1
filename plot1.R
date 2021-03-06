data1<-read.table("household_power_consumption.txt",header=TRUE,sep=";")
data1$Date<-strptime(data1$Date,"%d/%m/%Y")
data1$Date<-as.Date(data1$Date)
data_Feb<-subset(data1,Date<="2007-02-02"&Date>="2007-02-01")
data_Feb$Global_active_power<-as.numeric(data_Feb$Global_active_power)
with(data_Feb,hist(Global_active_power,xlab="Global Active Power (kilowats)",main="Global Active Power",col="red",xaxt="n"))
axis(1,at=c(0,1000,2000,3000),labels=c(0,2,4,6))
dev.copy(png,file="plot1.png", width = 480, height = 480)
dev.off()

