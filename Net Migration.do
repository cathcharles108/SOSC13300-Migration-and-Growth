** PREAMBLE
clear all
cd "\\tsclient\C\SOSC stuff\"

** LOAD CONSOLIDATED PWT + WDI DATA
import excel "spring.xlsx", sheet("Data") firstrow clear

edit

drop intlstock
drop if missing(netmig)

** create population times 1mil to be more accurate to calculations
gen pop1 = pop*1000000

** CREATE REAL OUTPUT GDP PER CAPITA VARIABLE
gen rgdpo_capita = rgdpo/pop1

** GENERATE AVERAGE REAL OUTPUT GDP PER CAPITA BY YEAR
egen avg_rgdpo_capita = mean(rgdpo_capita), by(year)

** create percentage of net migration variable
gen percent_netmig = netmig/pop1

** generate average net migration by year
egen avg_netmig = mean(percent_netmig), by(year)

reg rgdpo_capita percent_netmig year if countrycode=="IDN"
reg avg_rgdpo_capita avg_netmig year

** convert countrycode to number
encode countrycode, gen(countrycode1)

** declare panel dataset
xtset countrycode1 year, delta(5)

** FE regress indonesia net migration
xtreg rgdpo_capita percent_netmig if countrycode=="IDN", fe

** FE regress SEA net migration
xtreg avg_rgdpo_capita avg_netmig, fe

**xtline percent_netmig avg_netmig if countrycode=="IDN"  