#################################################################
Quick command to find variables with Zero Variance
Source:http://stackoverflow.com/questions/8805298/quickly-remove-zero-variance-variables-from-a-data-frame
#################################################################

var0 <- unlist(lapply(df, function(x) 0 == var(if (is.factor(x)) as.integer(x) else x)))

#It will be TRUE for 0-variance, 
#NA for columns with NAs and 
#FALSE for non-zero variance
