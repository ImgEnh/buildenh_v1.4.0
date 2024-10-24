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
  
  #b12 (b1-part2)
  #cas='100_all'
  
  if (bnr2 == 12 && p_pos == "cor_det") { 
    B5_6
    B5_6[14,] <- B5_4_ord[46,]
    B5_6[15,] <- B5_4_ord[41,]
    B5_6[16,] <- B5_4_ord[54,]
    B5_6[17,] <- B5_4_ord[9,]
    B5_6[18,] <- B5_4_ord[12,]
    B5_6[19,] <- B5_4_ord[15,]
    B5_6[20,] <- B5_4_ord[5,]
    B5_6[21,] <- B5_4_ord[57,]
    B5_6[22,] <- B5_4_ord[23,]
    B5_6[1:22,8] <- 1
    row.names(B5_6) <- 1 : length(B5_6$lnr)
    B5_6 <- B5_6[-c(9,11),]
    row.names(B5_6) <- 1 : length(B5_6$lnr)
    B5_6
    B5_6R4 <- B5_6
    #row.names(B5_6R4) <- 1 : length(B5_6R4$lnr)
    B5_6R4
    #lnr_det5 <- B5_6R4$lnr #new
  } #end b12 (b1-part2)
  
  #b61
  #cas ="100_all"
  
  if (bnr2 == 61 && p_pos == "cor_det") { 
    B5_6
    B5_6[10,] <- B5_4_ord[7,]
    B5_6[1:10,8] <- 1
    B5_6 <- B5_6[-3,]
    B5_6R4 <- B5_6
    row.names(B5_6R4) <- 1 : length(B5_6R4$lnr)
    #B5_6R4[18,6] <- -28 
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
  
  #b81
  #cas = "100_all"
  
  if (bnr2 == 81 && p_pos == "cor_det") { 
    B5_6
    B5_6 <- B5_6[-c(7:10),]
    B5_6
    B5_6R4 <- B5_6
    row.names(B5_6R4) <- 1 : length(B5_6R4$lnr)
    B5_6R4
    B5_6R4[10,] <- B5_4_ord[10,]
    B5_6R4[10,8] <- 1
    B5_6R4
  } #end b8
  
  #82
  #cas = "100_all"
  
  if (bnr2 == 82 && p_pos == "cor_det") { 
    #stop("manual operation")
    B5_6
    B5_6 <- B5_6[-c(8,13),]
    B5_6
    B5_6R4 <- B5_6
    row.names(B5_6R4) <- 1 : length(B5_6R4$lnr)
    B5_6R4
    B5_6R4[13,] <- B5_4_ord[41,] #164
    B5_6R4[14,] <- B5_4_ord[24,] #289
    B5_6R4[15,] <- B5_4_ord[6,] #2
    B5_6R4[16,] <- B5_4_ord[14,] #1
    B5_6R4[17,] <- B5_4_ord[14,] #1
    B5_6R4[18,] <- B5_4_ord[14,] #1
    row.names(B5_6R4) <- 1 : length(B5_6R4$lnr)
    B5_6R4[1:18,8] <- 1
    B5_6R4
  } #end b8
  
  #b9
  #cas = "100_all"
  
  if (bnr2 == 9 && p_pos == "cor_det") { 
    B5_6
    B5_6 <- B5_6[-c(6,7),]
    B5_6
    B5_6R4 <- B5_6
    row.names(B5_6R4) <- 1 : length(B5_6R4$lnr)
    B5_6R4[8,] <- B5_4_ord[35,]
    B5_6R4[8,8] <- 1
    row.names(B5_6R4) <- 1 : length(B5_6R4$lnr)
    B5_6R4[7,] <- B5_4_ord[37,]
    B5_6R4[7,8] <- 1
    B5_6R4
  } #end b9
  
  #b101
  #cas = "100_all"
  
  if (bnr2 == 101 && p_pos == "cor_det") { 
    #stop("check number of lines")
    B5_6
    B5_6 <- B5_6[-c(1,3,10,11,12),] #75,21,188,941,580
    B5_6
    B5_6R4 <- B5_6
    B5_6R4
    row.names(B5_6R4) <- 1 : length(B5_6R4$lnr)
    B5_6R4[9,] <- B5_4_ord[5,] #296
    B5_6R4[10,] <- B5_4_ord[27,] #26
    B5_6R4[11,] <- B5_4_ord[45,] #178
    B5_6R4[12,] <- B5_4_ord[47,] #104
    B5_6R4[13,] <- B5_4_ord[48,] #179
    B5_6R4[14,] <- B5_4_ord[55,] #288
    B5_6R4[1:14,8] <- 1
    row.names(B5_6R4) <- 1 : length(B5_6R4$lnr)
    B5_6R4
  } #end b101
  
  if (bnr2 == 102 && p_pos == "cor_det") { 
    B5_6
    B5_6 <- B5_6[-c(2,3,6),] #707,#449,#639
    B5_6
    B5_6R4 <- B5_6
    row.names(B5_6R4) <- 1 : length(B5_6R4$lnr)
    B5_6R4[1:4,8] <- 1
    row.names(B5_6R4) <- 1 : length(B5_6R4$lnr)
    B5_6R4
  } #end b102
  
  if (bnr2 == 103 && p_pos == "cor_det") { 
    B5_6
    B5_6 <- B5_6[-c(8,11,12),] #429,#700,#934
    B5_6
    B5_6R4 <- B5_6
    row.names(B5_6R4) <- 1 : length(B5_6R4$lnr)
    B5_6R4
    B5_6R4[11,] <- B5_4_ord[47,] #1b
    B5_6R4[12,] <- B5_4_ord[33,] #255
    row.names(B5_6R4) <- 1 : length(B5_6R4$lnr)
    B5_6R4[1:12,8] <- 1
    B5_6R4
  } #end b103
  
  
} #end of orthoimage "ISPRS4"

##end of script 'spObj_line_detection_v1.4.0.R'


