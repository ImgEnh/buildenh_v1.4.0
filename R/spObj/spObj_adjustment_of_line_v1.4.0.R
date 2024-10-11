##name of script: spObj_adjustment_of_line.R
cat("version_number= ",v_nr,"\n")
#author: Joachim Höhle
#GNU General Public License (GPL)


cat("start of spObj_adjustment of line ","\n")


##buildings of orthoimage ISPRS_#7

if (Img_name == "ISPRS7") {  
  #no correction
} #end of ISPRS7


##buildings of orthoimage ISPRS1

if (Img_name == "ISPRS1") {
 #no corrections 
} #end of ISPRS1

##buildings of orthoimage ISPRS4

#b9

if (Img_name == "ISPRS4") {
  
  if(bnr2 == 9 && p_pos == "cor_adj_line") {
    B6
    B6[6,]<- c(467,125,64,15,125,64,1)
  } 
} #end of ISPRS4

##end of script 'spObj_adjustment_of_line_v1.4.0.R' 
