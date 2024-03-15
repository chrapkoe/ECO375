clear

capture log close

log using chrapko_houseknecht_p5.log, replace

use "/Users/elissa/Desktop/GSS2022.dta"

* keep if martype == 1

keep if sexnow1 == 1 | sexnow1 == 2

keep if marital == 1

gen fem_indicator = 0
replace fem_indicator = 1 if sexnow1 == 2

gen div_indicator = 0
replace div_indicator = 1 if divorce == 1

* reg worry fem_indicator wtssnrps, robust
 
* reg worry fem_indicator sharehhw wtssnrps, robust

* reg worry fem_indicator sharehhw hapmar realinc realrinc sei10 satjob satfin polviews div_indicator age wtssnrps, robust

* reg worry fem_indicator hapmar sharehhw satjob age wtssnrps, robust

reg worry fem_indicator sharehhw abnomore satjob

* childs - number of children
* abnomore - married, wants no more children
* chldidel - ideal number of children

log close



