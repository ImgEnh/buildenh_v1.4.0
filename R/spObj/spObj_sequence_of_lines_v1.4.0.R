##name of script: spObj_sequence_of_lines_v1.4.0.R
#purpose: dealing with special objects 
#correction of position of line-centers, angle of line and sequence of lines 
#instruction: if corrections in the positions are required -> use interactive 
#             detection of lines in 'support_line_detection.R' 
#data: ISPRS orthoimages #1, #7, #4
#author: Joachim Höhle
#GNU General Public License (GPL)


##orthoimage ISPRS7

if (Img_name == "ISPRS7") { 
   
  #b18 
  #demo
  if (bnr2 == 18 && p_pos == "cor_pos") {  
    b13_angle_df[10,1:4] <- c(5,NA,789.8,1144.4) #line 5b
    b13_angle_df[8,1:4] <- c(3,NA,1017,1084)
    b13_angle_df[9,1:4] <- c(4,NA,1131.6,1044.1)
    b13_angle_df[6,1:4] <- c(5,NA,953.2,921.5) #line 5a
    b13_angle_df2 <- b13_angle_df
  } #end of b18

    
  #b23
  #auto
  
  if (bnr2 == 23 && p_pos == "cor_det") { 
    lnr_det3[6] <- c(36) 
    lnr_det5 <- lnr_det3
    n_PCR <- length(lnr_det5)
    B5_6R <- B5_6
    B5_6R <- B5_6R[1:n_PCR,]
    B5_6R$lnr[1:n_PCR] <- lnr_det5 
    row.names(B5_6R) <- 1:n_PCR
    B5_6R
    B5_4
    n_B5_4 <- length(B5_4$lnr)
    
    # loop
    i <- 1
    
    while (i <= n_B5_4) {
      
      if (B5_4$lnr[i] == lnr_det3[6]) { 
        B5_6R[6,2:7] <- B5_4[i,2:7]
        B5_6R[6,8] <- 1
      } #end if 
      
      i <- i + 1 
    } #end of loop
    
    B5_6R4 <- B5_6R
  } #end of b23

} #end of ISPRS7
##########################################################

##orthoimage ISPRS1

if (Img_name == "ISPRS1") {
  #b11
  #demo
  
  if (bnr2 == 11 && p_pos == "cor_pos") {  
    #determine new position by 'support_line_detection.R', #6
    #or with angle by 'support_sequence_of_lines.R', #9
    b13_angle_df
    b13_angle_df[8,3:4] <- c(1066,589) #lnr=24, midpoint is manually derived
    b13_angle_df2 <- b13_angle_df
  } #end b11

} #end of ISPRS1


##orthoimage ISPRS4

if (Img_name == "ISPRS4") {
  
  #b61
  if (bnr2 == 61 && p_pos == "cor_pos") {  
    #determine new position by 'support_line_detection.R', #6
    #or with angle by 'support_sequence_of_lines.R', #9
    b13_angle_df
    b13_angle_df[2,1:4] <- c(19,NA,382,108) #lnr=19,midpoint is manually changed
    b13_angle_df[10,1:4] <- c(2,NA,440,190) #lnr=2,midpoint is manually derived
    b13_angle_df2 <- b13_angle_df
    b13_angle_df2 
  } #end b61 "cor_pos"
  
  #b62
  
  if (bnr2 == 62 && p_pos == "cor_pos") {  
    #determine new position by 'support_line_detection.R', #6 or ('support_sequence_of_lines.R, #1)
    #or for angle by 'support_sequence_of_lines.R', #9
    b13_angle_df2[3,1:4] <- c(145,NA,467,212) #midpoint coordinates are manually derived
    b13_angle_df2[7,1:4] <- c(4,NA,477,180) #lnr=4a,midpoint coordinates are manually derived
    b13_angle_df2[2,1:4] <- c(4,NA,509,200) #lnr=4b,midpoint coordinates are manually derived
    b13_angle_df2[8,1:4] <- c(126,NA,463,188) #midpoint coordinates are manually derived
    b13_angle_df2
  } #end b62 "cor_pos"
  
} #end of ISPRS4
  

##end of script 'spObj_sequence_of_lines_v1.4.0.R'
################################################################################
