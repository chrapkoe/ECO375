clear

use "/Users/shay/Downloads/2022/GSS2022.dta"

gen male_indicator = 0
replace male_indicator = 1 if sexnow1 == 1


reg hapmar male_indicator, robust
 
reg hapmar male_indicator sharehhw, robust
* THIS IS THE ONE THAT QUANTIFIES MENTAL LOAD, WITHOUT CONTROLS

reg hapmar male_indicator sharehhw satjob satfin, robust
