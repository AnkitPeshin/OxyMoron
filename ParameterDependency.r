data=read.csv('juvenile1.csv')
data$edu1=data$Education...Illiterate/(data$Education...Illiterate+data$Education...Primary+data$Education...Matric..H.Sec....Above+data$Education...Above.Primary.But.Below.Matric.H.Sec.)
data$edu2=data$Education...Primary/(data$Education...Illiterate+data$Education...Primary+data$Education...Matric..H.Sec....Above+data$Education...Above.Primary.But.Below.Matric.H.Sec.)
data$edu3=data$Education...Matric..H.Sec....Above/(data$Education...Illiterate+data$Education...Primary+data$Education...Matric..H.Sec....Above+data$Education...Above.Primary.But.Below.Matric.H.Sec.)
data$edu4=data$Education...Above.Primary.But.Below.Matric.H.Sec./(data$Education...Illiterate+data$Education...Primary+data$Education...Matric..H.Sec....Above+data$Education...Above.Primary.But.Below.Matric.H.Sec.)
data$edu1[data$edu1=='NaN']=0
data$edu2[data$edu2=='NaN']=0
data$edu3[data$edu3=='NaN']=0
data$edu4[data$edu4=='NaN']=0
a11=mean(data$edu1)
a12=mean(data$edu2)
a13=mean(data$edu3)
a14=mean(data$edu4)
a11
x1 <- c(a11,a12,a13,a14)
labels <- c("Illiterate", "Primary", "Above Matric", "Below Matric")
png(file = "lit.jpg")
pie(x1,labels)
data$Fam1=data$Family.Background...Homeless/(data$Family.Background...Homeless+data$Family.Background...Living.With.Parents+data$Family.Background...Living.With.Guardians)
data$Fam2=data$Family.Background...Living.With.Parents/(data$Family.Background...Homeless+data$Family.Background...Living.With.Parents+data$Family.Background...Living.With.Guardians)
data$Fam3=data$Family.Background...Living.With.Guardians/(data$Family.Background...Homeless+data$Family.Background...Living.With.Parents+data$Family.Background...Living.With.Guardians)
data$Fam1[data$Fam1=='NaN']=0
data$Fam2[data$Fam2=='NaN']=0
data$Fam3[data$Fam3=='NaN']=0
a21=mean(data$Fam1)
a22=mean(data$Fam2)
a23=mean(data$Fam3)
x2<-c(a21,a22,a23)
labels<-c('Homeless','With Parents','With Guardians')
pie(x2,labels)
data$Eco1=data$Economic.Status...Annual.Income..Upto.Rupees.25.000./(data$Economic.Status...Annual.Income..Upto.Rupees.25.000.+data$Economic.Status...Annual.Income..Rupees.25.001.To.Rupees.50.000.+data$Economic.Status...Middle.Income..Rupees.50.001.To.Rupees.1.00.000.+data$Economic.Status...Middle.Income..Rupees.1.00.001.To.Rupees.2.00.000.+data$Economic.Status...Upper.Middle.Income..Rupees.2.00.001.To.Rupees.3.00.000.+data$Economic.Status...Upper.Income..Above.Rupees.3.00.000.)
data$Eco2=data$Economic.Status...Annual.Income..Rupees.25.001.To.Rupees.50.000./(data$Economic.Status...Annual.Income..Upto.Rupees.25.000.+data$Economic.Status...Annual.Income..Rupees.25.001.To.Rupees.50.000.+data$Economic.Status...Middle.Income..Rupees.50.001.To.Rupees.1.00.000.+data$Economic.Status...Middle.Income..Rupees.1.00.001.To.Rupees.2.00.000.+data$Economic.Status...Upper.Middle.Income..Rupees.2.00.001.To.Rupees.3.00.000.+data$Economic.Status...Upper.Income..Above.Rupees.3.00.000.)
data$Eco3=data$Economic.Status...Middle.Income..Rupees.50.001.To.Rupees.1.00.000./(data$Economic.Status...Annual.Income..Upto.Rupees.25.000.+data$Economic.Status...Annual.Income..Rupees.25.001.To.Rupees.50.000.+data$Economic.Status...Middle.Income..Rupees.50.001.To.Rupees.1.00.000.+data$Economic.Status...Middle.Income..Rupees.1.00.001.To.Rupees.2.00.000.+data$Economic.Status...Upper.Middle.Income..Rupees.2.00.001.To.Rupees.3.00.000.+data$Economic.Status...Upper.Income..Above.Rupees.3.00.000.)
data$Eco4=data$Economic.Status...Middle.Income..Rupees.1.00.001.To.Rupees.2.00.000./(data$Economic.Status...Annual.Income..Upto.Rupees.25.000.+data$Economic.Status...Annual.Income..Rupees.25.001.To.Rupees.50.000.+data$Economic.Status...Middle.Income..Rupees.50.001.To.Rupees.1.00.000.+data$Economic.Status...Middle.Income..Rupees.1.00.001.To.Rupees.2.00.000.+data$Economic.Status...Upper.Middle.Income..Rupees.2.00.001.To.Rupees.3.00.000.+data$Economic.Status...Upper.Income..Above.Rupees.3.00.000.)
data$Eco5=data$Economic.Status...Upper.Middle.Income..Rupees.2.00.001.To.Rupees.3.00.000./(data$Economic.Status...Annual.Income..Upto.Rupees.25.000.+data$Economic.Status...Annual.Income..Rupees.25.001.To.Rupees.50.000.+data$Economic.Status...Middle.Income..Rupees.50.001.To.Rupees.1.00.000.+data$Economic.Status...Middle.Income..Rupees.1.00.001.To.Rupees.2.00.000.+data$Economic.Status...Upper.Middle.Income..Rupees.2.00.001.To.Rupees.3.00.000.+data$Economic.Status...Upper.Income..Above.Rupees.3.00.000.)
data$Eco6=data$Economic.Status...Upper.Income..Above.Rupees.3.00.000./(data$Economic.Status...Annual.Income..Upto.Rupees.25.000.+data$Economic.Status...Annual.Income..Rupees.25.001.To.Rupees.50.000.+data$Economic.Status...Middle.Income..Rupees.50.001.To.Rupees.1.00.000.+data$Economic.Status...Middle.Income..Rupees.1.00.001.To.Rupees.2.00.000.+data$Economic.Status...Upper.Middle.Income..Rupees.2.00.001.To.Rupees.3.00.000.+data$Economic.Status...Upper.Income..Above.Rupees.3.00.000.)
data$Eco1[data$Eco1=='NaN']=0
data$Eco2[data$Eco2=='NaN']=0
data$Eco3[data$Eco3=='NaN']=0
data$Eco4[data$Eco4=='NaN']=0
data$Eco5[data$Eco5=='NaN']=0
data$Eco6[data$Eco6=='NaN']=0
a31=mean(data$Eco1)
a32=mean(data$Eco2)
a33=mean(data$Eco3)
a34=mean(data$Eco4)
a35=mean(data$Eco5)
a36=mean(data$Eco6)
data$Eco1
x3<-c(a31,a32,a33,a34,a35,a36)
labels<-c('Below 25k','25-50k','50-100k','100-200k','200k-300k','Above 300k')
pie(x3,labels)

