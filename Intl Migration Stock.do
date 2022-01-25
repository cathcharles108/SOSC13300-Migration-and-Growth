** PREAMBLE
clear all
cd "\\tsclient\C\SOSC stuff\"

** LOAD CONSOLIDATED PWT + WDI DATA
import excel "spring.xlsx", sheet("Data") firstrow clear

edit

drop netmig
drop if missing(intlstock)

** create population times 1mil to be more accurate to calculations
gen pop1 = pop*1000000

** CREATE REAL OUTPUT GDP PER CAPITA VARIABLE
gen rgdpo_capita = rgdpo/pop1

** GENERATE AVERAGE REAL OUTPUT GDP PER CAPITA BY YEAR
egen avg_rgdpo_capita = mean(rgdpo_capita), by(year)

** create percentage international migration stock variable
gen percent_intlstock = intlstock/pop1

** generate average percentage international migration stock by year
egen avg_intlstock = mean(percent_intlstock), by(year)

** GRAPH AVERAGE REAL OUTPUT GDP PER CAPITA BY YEAR
** GRAPH INDONESIA REAL OUTPUT GDP PER CAPITA BY YEAR
**scatter avg_rgdpo_capita year || scatter rgdpo_capita year if countrycode=="IDN" || lfit rgdpo_capita year if countrycode=="IDN" || lfit avg_rgdpo_capita year

reg rgdpo_capita percent_intlstock year if countrycode=="IDN"
reg avg_rgdpo_capita avg_intlstock year

** convert countrycode to number
encode countrycode, gen(countrycode1)

** declare panel dataset
xtset countrycode1 year, delta(5)

** FE regress indonesia intl migration stock
xtreg rgdpo_capita percent_intlstock if countrycode=="IDN", fe

** FE regress SEA intl migration stock
xtreg avg_rgdpo_capita avg_intlstock, fe

**xtline percent_intlstock avg_intlstock if countrycode=="IDN"  