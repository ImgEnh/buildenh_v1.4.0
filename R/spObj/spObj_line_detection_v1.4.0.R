##name of script: spObj_line_detection_v1.4.0.R
cat("version_number= ",v_nr,"\n")
##purpose: dealing with special objects in script 'line detection.R' 
##instructions: change of default values may be required
#default values: ref_line=1
#default values: n_pix=15 ("extr_wd"),25 ("4_long"),35 ("100_all"),15("100_all+nonortho")
#small rectangular lines can be detected by:
#changing the default value (n_pix=35) in 'line detection.R' or by
#pointing to one pixel using script 'support_line_detection.R'
##author: Joachim Höhle
##GNU General Public License (GPL)


##orthoimage "ISPRS7"

if (Img_name == "ISPRS7") { 
  
  ##b18
  #cas="100_all+nonortho"
  
  if (bnr2 == 18 && p_pos == "cor_det") {
    lnr_det4 <- lnr_det3[-c(2,4,7,10)] 
    lnr_det4[10] <- c(5)
    lnr_det5 <- lnr_det4
  } #end b18
  
  ##b23
  #cas = "100_all"
  
  if (bnr2 == 23 && p_pos == "cor_det") {
     n2 <- nrow(B5_6)
     B5_6[n2+1,] <- B5_4[10,]
     B5_6 <- B5_6[-c(2:3,7:9,11:15),1:8]
     n_B5_6 <- length(B5_6$lnr)
     row.names(B5_6) <- 1 : n_B5_6
     B5_6$ortho <- 1
     B5_6R4 <- B5_6
  } #end b23
    
} #end of orthoimage "ISPRS7"

###############################################################################

##ISPRS1

if (Img_name == "ISPRS1") { 
  
  
  ##b11
  #demo
  #cas="100_all+nonortho"
  
  if (bnr2 == 11 && p_pos == "cor_det") {
    B5_6
    B5_6[5,] <- B4[173,] #correction of line
    B5_6R4 <- B5_6
    lnr_det5 <- B5_6R4$lnr
  } #end b11
  
} #end of orthoimage "ISPRS1"


##ISPRS4

if (Img_name == "ISPRS4") { 
  
  ##b6
  
  #b61
  #case='100_all'
  
  if (bnr2 == 61 && p_pos == "cor_det") { 
    B5_6
    B5_6[10,] <- B5_4_ord[7,]
    B5_6[1:10,8] <- 1
    B5_6 <- B5_6[-3,]
    B5_6R4 <- B5_6
    row.names(B5_6R4) <- 1 : length(B5_6R4$lnr)
    B5_6R4
  } #end b61
  
  #b62
  #case='100_all'
  
  if (bnr2 == 62 && p_pos == "cor_det") { 
    B5_6
    B5_7 <- B5_6
    B5_6R4 <- B5_7[-6,] #417
    row.names(B5_6R4) <- 1 : nrow(B5_6R4)
    B5_6R4
    B5_6R4[7,] <- B5_4_ord[8,] #4
    B5_6R4[8,] <- B5_4_ord[16,] #126
    B5_6R4[7:8,8] <- 1
    row.names(B5_6R4) <- 1 : length(B5_6R4$lnr)
    B5_6R4
  } #end b62
} #end of orthoimage "ISPRS4"

##end of script 'spObj_line_detection_v1.4.0.R'


