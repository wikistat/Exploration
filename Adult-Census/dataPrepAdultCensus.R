dataPrepAdultCensus = function(path=""){
  data = read.table(paste(path,"https://www.math.univ-toulouse.fr/~besse/Wikistat/data/adultCensus.dat",sep=""),
					sep=",",header=F,col.names=c("age", "workClass", "fnlwgt", "education", 
                    "educNum","mariStat", "occup", "relationship", "origEthn","sex",
                    "capitalGain", "capitalLoss", "hoursWeek","nativCountry", "income"),
					fill=FALSE,strip.white=T)
  
 # data[["educNum"]]=NULL
 # data[["fnlwgt"]]=NULL
  
  data$workClass = as.character(data$workClass)
  data$occup = as.character(data$occup)
  data$nativCountry = as.character(data$nativCountry)
  data$education = as.character(data$education)
  data$origEthn = as.character(data$origEthn)
  data$mariStat = as.character(data$mariStat)
  
  data$mariStat[data$mariStat=="Never-married"] = "Never-Married"
  data$mariStat[data$mariStat=="Married-AF-spouse"] = "Married"
  data$mariStat[data$mariStat=="Married-civ-spouse"] = "Married"
  data$mariStat[data$mariStat=="Married-spouse-absent"] = "Not-Married"
  data$mariStat[data$mariStat=="Separated"] = "Not-Married"
  data$mariStat[data$mariStat=="Divorced"] = "Not-Married"
  data$mariStat[data$mariStat=="Widowed"] = "Widowed"
  
  data$nativCountry[data$nativCountry=="Cambodia"] = "SE-Asia"     # blocking nativCountry of Origin
  data$nativCountry[data$nativCountry=="Canada"] = "British-Commonwealth"     
  data$nativCountry[data$nativCountry=="China"] = "China"        
  data$nativCountry[data$nativCountry=="Columbia"] = "South-America"     
  data$nativCountry[data$nativCountry=="Cuba"] = "Other"         
  data$nativCountry[data$nativCountry=="Dominican-Republic"] = "Latin-America"
  data$nativCountry[data$nativCountry=="Ecuador"] = "South-America"      
  data$nativCountry[data$nativCountry=="El-Salvador"] = "South-America"  
  data$nativCountry[data$nativCountry=="England"] = "British-Commonwealth"
  data$nativCountry[data$nativCountry=="France"] = "Euro_1"
  data$nativCountry[data$nativCountry=="Germany"] = "Euro_1"
  data$nativCountry[data$nativCountry=="Greece"] = "Euro_2"
  data$nativCountry[data$nativCountry=="Guatemala"] = "Latin-America"
  data$nativCountry[data$nativCountry=="Haiti"] = "Latin-America"
  data$nativCountry[data$nativCountry=="Holand-Netherlands"] = "Euro_1"
  data$nativCountry[data$nativCountry=="Honduras"] = "Latin-America"
  data$nativCountry[data$nativCountry=="Hong"] = "China"
  data$nativCountry[data$nativCountry=="Hungary"] = "Euro_2"
  data$nativCountry[data$nativCountry=="India"] = "British-Commonwealth"
  data$nativCountry[data$nativCountry=="Iran"] = "Other"
  data$nativCountry[data$nativCountry=="Ireland"] = "British-Commonwealth"
  data$nativCountry[data$nativCountry=="Italy"] = "Euro_1"
  data$nativCountry[data$nativCountry=="Jamaica"] = "Latin-America"
  data$nativCountry[data$nativCountry=="Japan"] = "Other"
  data$nativCountry[data$nativCountry=="Laos"] = "SE-Asia"
  data$nativCountry[data$nativCountry=="Mexico"] = "Latin-America"
  data$nativCountry[data$nativCountry=="Nicaragua"] = "Latin-America"
  data$nativCountry[data$nativCountry=="Outlying-US(Guam-USVI-etc)"] = "Latin-America"
  data$nativCountry[data$nativCountry=="Peru"] = "South-America"
  data$nativCountry[data$nativCountry=="Philippines"] = "SE-Asia"
  data$nativCountry[data$nativCountry=="Poland"] = "Euro_2"
  data$nativCountry[data$nativCountry=="Portugal"] = "Euro_2"
  data$nativCountry[data$nativCountry=="Puerto-Rico"] = "Latin-America"
  data$nativCountry[data$nativCountry=="Scotland"] = "British-Commonwealth"
  data$nativCountry[data$nativCountry=="South"] = "Euro_2"
  data$nativCountry[data$nativCountry=="Taiwan"] = "China"
  data$nativCountry[data$nativCountry=="Thailand"] = "SE-Asia"
  data$nativCountry[data$nativCountry=="Trinadad&Tobago"] = "Latin-America"
  data$nativCountry[data$nativCountry=="United-States"] = "United-States"
  data$nativCountry[data$nativCountry=="Vietnam"] = "SE-Asia"
  data$nativCountry[data$nativCountry=="Yugoslavia"] = "Euro_2"
  
  data$education = gsub("^10th","Dropout",data$education)
  data$education = gsub("^11th","Dropout",data$education)
  data$education = gsub("^12th","Dropout",data$education)
  data$education = gsub("^1st-4th","Dropout",data$education)
  data$education = gsub("^5th-6th","Dropout",data$education)
  data$education = gsub("^7th-8th","Dropout",data$education)
  data$education = gsub("^9th","Dropout",data$education)
  data$education = gsub("^Assoc-acdm","Associates",data$education)
  data$education = gsub("^Assoc-voc","Associates",data$education)
  data$education = gsub("^Bachelors","Bachelors",data$education)
  data$education = gsub("^Doctorate","Doctorate",data$education)
  data$education = gsub("^HS-Grad","HS-Graduate",data$education)
  data$education = gsub("^Masters","Masters",data$education)
  data$education = gsub("^Preschool","Dropout",data$education)
  data$education = gsub("^Prof-school","Prof-School",data$education)
  data$education = gsub("^Some-college","HS-Graduate",data$education)
  
  data$workClass = gsub("^Federal-gov","Federal-Govt",data$workClass)
  data$workClass = gsub("^Local-gov","Other-Govt",data$workClass)
  data$workClass = gsub("^State-gov","Other-Govt",data$workClass)
  data$workClass = gsub("^Private","Private",data$workClass)
  data$workClass = gsub("^Self-emp-inc","Self-Employed",data$workClass)
  data$workClass = gsub("^Self-emp-not-inc","Self-Employed",data$workClass)
  data$workClass = gsub("^Without-pay","Not-Working",data$workClass)
  data$workClass = gsub("^Never-worked","Not-Working",data$workClass)
  
  data$occup = gsub("^Adm-clerical","Admin",data$occup)
  data$occup = gsub("^Armed-Forces","Military",data$occup)
  data$occup = gsub("^Craft-repair","Blue-Collar",data$occup)
  data$occup = gsub("^Exec-managerial","White-Collar",data$occup)
  data$occup = gsub("^Farming-fishing","Blue-Collar",data$occup)
  data$occup = gsub("^Handlers-cleaners","Blue-Collar",data$occup)
  data$occup = gsub("^Machine-op-inspct","Blue-Collar",data$occup)
  data$occup = gsub("^Other-service","Service",data$occup)
  data$occup = gsub("^Priv-house-serv","Service",data$occup)
  data$occup = gsub("^Prof-specialty","Professional",data$occup)
  data$occup = gsub("^Protective-serv","Other-occups",data$occup)
  data$occup = gsub("^Sales","Sales",data$occup)
  data$occup = gsub("^Tech-support","Other-occups",data$occup)
  data$occup = gsub("^Transport-moving","Blue-Collar",data$occup)
  
  data$occup[data$occup=="Military"]=NA
  
  data$origEthn[data$origEthn=="White"] = "White"
  data$origEthn[data$origEthn=="Black"] = "Black"
  data$origEthn[data$origEthn=="Amer-Indian-Eskimo"] = "Amer-Indian"
  data$origEthn[data$origEthn=="Asian-Pac-Islander"] = "Asian"
  data$origEthn[data$origEthn=="Other"] = "Other"
  
  data[["LcapitalGain"]]=log(1+data$capitalGain)
  data[["LcapitalLoss"]]=log(1+data$capitalLoss)
  
  data[["capitalGain"]] <- ordered(cut(data$capitalGain,c(-Inf, 0, 
            median(data[["capitalGain"]][data[["capitalGain"]] >0]), Inf)), labels = c("None", "cgLow", "cgHigh"))
  data[["capitalLoss"]] <- ordered(cut(data$capitalLoss,c(-Inf, 0, 
            median(data[["capitalLoss"]][data[["capitalLoss"]] >0]), Inf)), labels = c("None", "clLow", "clHigh"))

  is.na(data) = data=='?'
  is.na(data) = data==' ?'
  
  
  data$mariStat = factor(data$mariStat)
  data$education = factor(data$education)
  data$nativCountry = factor(data$nativCountry)
  data$workClass = factor(data$workClass)
  data$occup = factor(data$occup)
  data$origEthn = factor(data$origEthn)
  data$sex = factor(data$sex)
  data$relationship = factor(data$relationship)
  data$income = as.factor(ifelse(data$income==data$income[1],"incLow","incHigh"))
  
   data$ageQ = cut(data$age,breaks=quantile(data$age,
                   probs=seq(0,1,1/5)),labels=c("Ag1","Ag2","Ag3","Ag4","Ag5"))
  data$hoursWeekQ = cut(data$hoursWeek,breaks=c(0,39,41,100),labels=c("HW1","HW2","HW3"))
  data = na.omit(data)
#  sample = rbinom(dim(data)[1],1,.3)           #splitting the data into training set
#  trainset = data[sample==0,]
#  valset = data[sample==1,]    
  
#  return(list(train = trainset,val = valset)) 
  return(data)
}
dataBase = dataPrepAdultCensus()