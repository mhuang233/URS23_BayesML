#https://nces.ed.gov/training/datauser/ED_03.html

library(EdSurvey)

downloadECLS_K(root = file.path(getwd()), years = c(2011))

# File has to be manaully unzipped due to the format


#Variables to be collected:
#Student and School IDs
#CHILDID
#S1_ID
#S2_ID
#S3_ID
#S4_ID
#S5_ID
#S6_ID
#S7_ID
#S8_ID
#S9_ID

#Mom education
#x12par1ed_i - composite, based on the fall 2010 or spring 2011
#x4par1ed_i - Spring 12
#x7par1ed_i - Spring 14
#x8par1ed_i - Spring 15
#x9par1ed_i - Spring 16


#Dad education
#x12par2ed_i
#x4par2ed_i
#x7par2ed_i
#x8par2ed_i
#x9par2ed_i  


#Gender
#x_chsex_r - revised composite

#Age
#X1KAGE_R - Fall 10
#X2KAGE_R - Spring 11
#X3AGE - Fall 2011
#X4AGE - Spring 2012
#X5AGE - Fall 2012
#X6AGE - Spring 2013
#X7AGE - Spring 2014
#X8AGE - Spring 2015
#X9AGE - Spring 2016

#Help
#Not found


#Famstr
#X1HPARNT - Fall 10
#X2HPARNT - Spring 11
#X4HPARNT - Spring 12
#X6HPARNT - Spring 13
#X7HPARNT - Spring 14
#X8HPARNT - Spring 15
#X9HPARNT - Spring 16


#Numsib
#X1NUMSIB - Fall 10
#X2NUMSIB - Spring 11
#X4NUMSIB - Spring 12
#X6NUMSIB - Spring 13
#X7NUMSIB - Spring 14
#X8NUMSIB - Spring 15
#X9NUMSIB - Spring 16

#Income
#Only expressed in ranges, total income is confidential
#X2INCCAT_I - Spring 11
#X4INCCAT_I - Spring 12
#X6INCCAT_I - Spring 13
#X7INCCAT_I - Spring 14
#X8INCCAT_I - Spring 15
#X9INCCAT_I - Spring 16


#Region
#X1REGION - Fall 10
#X2REGION - Spring 11
#X3REGION - Fall 11
#X4REGION - Spring 12
#X5REGION - Fall 12
#X6REGION - Spring 13
#X7REGION - Spring 14
#X8REGION - Spring 15
#X9REGION - Spring 16



#Urban
#X1LOCALE - Fall 10
#X2LOCALE - Spring 11
#X3LOCALE - Fall 11
#X4LOCALE - Spring 12
#X5LOCALE - Fall 12
#X6LOCALE - Spring 13
#X7LOCALE - Spring 14
#X8LOCALE - Spring 15
#X9LOCALE - Spring 16


#White
#X_WHITE_R

#Hisp
#X_HISP_R

#Asian
#X_ASIAN_R

#Black
#X_BLACK_R

#Others
#X_MULTR_R
#X_AMINAN_R
#X_HAWPI_R


# Data Collection periods:
#2010???11 Kindergarten Fall 2010 t = 0; Spring 2011 t = 1
#2011???12 First grade Fall 2011 t = 2; Spring 2012 t = 3
#2012???13 Second grade Fall 2012 t = 4; Spring 2013 t = 5
#2013???14 Third grade Spring 2014 t = 6
#2014???15 Fourth grade Spring 2015 t = 7
#2015???16 Fifth grade Spring 2016 t = 8


ECLSK2011 <- readECLS_K2011(path = file.path(getwd(), "/ECLS_K/2011"))

df <- getData(data = ECLSK2011, varnames = c("childid",
                                             "s1_id","s2_id","s3_id","s4_id","s5_id","s6_id","s7_id","s8_id","s9_id",
                                             "x12par1ed_i", "x4par1ed_i", "x7par1ed_i", "x8par1ed_i", "x9par1ed_i",
                                             "x12par2ed_i", "x4par2ed_i", "x7par2ed_i", "x8par2ed_i", "x9par2ed_i",
                                             "x_chsex_r",
                                             "x1kage_r", "x2kage_r", "x3age", "x4age", "x5age", "x6age", "x7age", "x8age", "x9age",
                                             "x1hparnt", "x2hparnt", "x4hparnt", "x6hparnt", "x7hparnt", "x8hparnt", "x9hparnt",
                                             "x1numsib", "x2numsib", "x4numsib", "x6numsib", "x7numsib", "x8numsib", "x9numsib",
                                             "x2inccat_i", "x4inccat_i", "x6inccat_i", "x7inccat_i", "x8inccat_i", "x9inccat_i",
                                             "x1region", "x2region", "x3region", "x4region", "x5region", "x6region", "x7region", "x8region", "x9region",
                                             "x1locale", "x2locale", "x3locale", "x4locale", "x5locale", "x6locale", "x7locale", "x8locale", "x9locale",
                                             "x_white_r", "x_hisp_r", "x_asian_r", "x_black_r", "x_multr_r", "x_aminan_r", "x_hawpi_r",
                                             "x1mscalk5","x2mscalk5","x3mscalk5","x4mscalk5","x5mscalk5","x6mscalk5","x7mscalk5","x8mscalk5","x9mscalk5"),
                                              addAttributes = TRUE)


write.csv(df, file.path(getwd(), "ECLS_K_RAW.csv"), row.names=TRUE)
