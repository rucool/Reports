---
title: "May 2026 Budget Review"
format: revealjs
editor: visual
---

```{r}
library(knitr)
library(tidyverse)
library(kableExtra)
library(dplyr)
library(gt)
library(lubridate)
library(readxl)

pb <- read_excel("~/Downloads/20260505 COOL Projects Consolidated View By Task(2).xlsx", skip=3)
  #read_excel("~/Downloads/Balance Report 20250826 (1).xlsx", skip=3)
#pb = filter(pb, `Current Project Status Name` %in% "Active") 
pb$`Sponsor End Date` = as.POSIXct(pb$`Sponsor End Date`, format = "%m/%d/%Y")
pb = arrange(pb, `Sponsor End Date`)
pb = filter(pb, `Sponsor End Date` > "2026-01-01") %>%
  dplyr::select(-`Current Project Status Name`)
pb$Cost = pb$`Raw Cost` # names change in this file
            
difftime_func <- function(n){
    difftime(strptime(pb$`Sponsor End Date`[n], format = "%Y-%m-%d"), 
             + strptime("2026-05-06", format = "%Y-%m-%d"), 
             units="days")
  }
```

# 3 Months

May - July 2026

## 2024 NJDEP

```{r}
n=6
x = format((pb$`Total Actual Cost`[n]/pb$Budget[n])*100, digits = 2)
```

`r x`% spent. 

Buying new glider on insurance & user fee

```{r}
n=6
round(difftime_func(n))
kable(pb[n,], format.args = list(big.mark = ",")) %>%
  kable_styling(font_size = 15) %>%
      row_spec(row = 0, color = "navy", background = "lightcyan")
```

## MBON

```{r}
n=9
x = format((pb$`Total Actual Cost`[n]/pb$Budget[n])*100, digits = 2)
```

`r x`% spent

Hugh Salary

```{r}
n=9
round(difftime_func(n))
kable(pb[n,], format.args = list(big.mark = ",")) %>%
  kable_styling(font_size = 15) %>%
      row_spec(row = 0, color = "navy", background = "lightcyan")
```

## Cod Monitoring at

```{r}
n=c(5,7,8,10,11)
x = format((pb$`Total Actual Cost`[n]/pb$Budget[n])*100, digits = 2)
```

`r x`% spent.

SRW Y1 (838999), REV Y1(836764), REV Y2 (836765), REV Y3 (840787) & SRW Y2 (840788). \~\$150k remaining

```{r}
n=c(5,7,8,10,11)
round(difftime_func(n)[1])
kable(pb[n,], format.args = list(big.mark = ",")) %>%
  kable_styling(font_size = 12) %>%
      row_spec(row = 0, color = "navy", background = "lightcyan")
```

## MARACOOS

```{r}
n=12:18
x = format((pb$`Total Actual Cost`[n]/pb$Budget[n])*100, digits = 2)
```

`r x`% spent

```{r}
n=12:18
round(difftime_func(n))
kable(pb[n,], format.args = list(big.mark = ",")) %>%
  kable_styling(font_size = 12) %>%
      row_spec(row = 0, color = "navy", background = "lightcyan")
```

## 6 months

Aug. - Oct. 2026


## NYSERDA (834648)

```{r}
n=19
x = format((pb$`Total Actual Cost`[n]/pb$Budget[n])*100, digits = 2)
```

`r x`% spent.

```{r}
n=19
round(difftime_func(n))
kable(pb[n,], format.args = list(big.mark = ",")) %>%
  kable_styling(font_size = 15) %>%
      row_spec(row = 0, color = "navy", background = "lightcyan")
```


## MOCEAN (837207)

```{r}
n=20
x = format((pb$`Total Actual Cost`[n]/pb$Budget[n])*100, digits = 2)
```

`r x`% spent.

```{r}
n=20
round(difftime_func(n))
kable(pb[n,], format.args = list(big.mark = ",")) %>%
  kable_styling(font_size = 15) %>%
      row_spec(row = 0, color = "navy", background = "lightcyan")
```


## Yale (840808)

```{r}
n=21
x = format((pb$`Total Actual Cost`[n]/pb$Budget[n])*100, digits = 2)
```

`r x`% spent.

```{r}
n=21
round(difftime_func(n))
kable(pb[n,], format.args = list(big.mark = ",")) %>%
  kable_styling(font_size = 15) %>%
      row_spec(row = 0, color = "navy", background = "lightcyan")
```


## SOCCOM (838815)

```{r}
n=22
x = format((pb$`Total Actual Cost`[n]/pb$Budget[n])*100, digits = 2)
```

`r x`% spent.

```{r}
n=22
round(difftime_func(n))
kable(pb[n,], format.args = list(big.mark = ",")) %>%
  kable_styling(font_size = 15) %>%
      row_spec(row = 0, color = "navy", background = "lightcyan")
```


## BOEMRE NYB Sands (832319)
missing from the list, Julia & Laura
