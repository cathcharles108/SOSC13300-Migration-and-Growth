# SOSC13300-Migration-and-Growth
A research report submitted for the University of Chicago's SOSC 13300 (Social Science Inquiry III) class that analyzes the relationship between migration and economic growth in Southeast Asia, and, specifically, Indonesia.

# Abstract
In this report, we consider the relationship between migration and economic growth in Southeast Asia, and specifically in Indonesia. To do so, we utilize existing literature to pinpoint trends on Indonesian migration and to establish our theory that there is a negative correlation. Using data from the World Bank and the Penn World Tables, and using fixed-effects regression for our research, we receive supporting results, with caveats that can be logically explained. Thus, we conclude that, in general, there is indeed a negative correlation between Indonesia migration and its economic growth, and that the government is currently implementing the right emigration policies to boost aforementioned growth.

# Datasets
The data used in this study are as follows:
- World Development Indicators, by the World Bank (https://databank.worldbank.org/reports.aspx?source=world-development-indicators)
- Penn World Tables (http://www.ggdc.net/pwt)

These two sources are combined to make the dataset referenced in this research report. That dataset is the file 'Final Dataset.xlsx' in this repository. The codebook to the dataset is also found in this repository with the filename 'codebook.pdf.'

# Hypothesis and Research Design (snippets from the report)
"This research paper theorizes that there is a negative correlation between migration and economic growth. We tap into immigration using two measures, the net migration rate and the international migration stock. Specifically, the net migration rate is coded as immigration minus emigration. We hypothesize that emigration has a positive correlation with economic growth. However, because of how the net migration rate is coded, we hypothesize that the correlation between the net migration rate and economic growth is in the negative direction, instead."

Variables:
- Dependent Variable: output-side real GDP per capita growth
- Independent Variable: net migration, international migration stock
- Control Variable: population

# Data Analysis
The coding portion of this project is the data analysis, done on Stata. The study utilizes a fixed-effects regression that takes into account the many other factors that affect migration. It also avoids omitted variable bias and removes the noise that comes with panel data.

# Conclusion
The data analysis provides mixed evidence for the theory and hypothesis, but there is strong enough evidence in support of the theory. Therefore, it seems that Indonesia's having lower net migration and international migration stock correlate positively with economic growth and development.

# Next Steps
This report analyzes a very specific region and focuses more on a specific country, Indonesia. The report also is limited by the number of control variables it can reasonably accommodate. Some future extensions of this project will be to broaden the scope of countries, as well as take into account more variables.

# Acknowledgements
Special thanks to Dr. Mark Deming of the University of Chicago for guiding me through this research report.
