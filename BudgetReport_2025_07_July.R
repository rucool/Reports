---
title: "RUCOOL July 2025 Budget Report"
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

pb <- read_excel("Downloads/COOL 20250702 Projects Consolidated View By Task.xlsx")
pb = filter(pb, `Current Project Status Name` %in% "Active")
pb$`Sponsor End Date` = as.POSIXct(pb$`Sponsor End Date`, format = "%m/%d/%Y")
```

## Ended 6/30 but still listed as active

```{r}
n=c(1:8) 
kable(pb[n,], format.args = list(big.mark = ",")) %>% kable_styling(font_size = 12)
```

# Under 3 months 
to Oct. 2025

## MARACOOS

```{r}
n=c(9:15)
x = format((pb$`Total Actual Cost`[n]/pb$Budget[n])*100, digits = 2)
```

`r x`% spent

Glider (Aug/Sept), Mike (Jan), Satellite (June - Steve will bring to zero), HFR (Nov or Feb), Modeling, Data to Model, DAC

```{r}
n=c(9:15)
difftime(strptime(pb$`Sponsor End Date`[n], format = "%Y-%m-%d"), + strptime("2025-07-08", format = "%Y-%m-%d"),units="days")

kable(pb[n,], format.args = list(big.mark = ",")) %>%
  kable_styling(font_size = 10)
```

## UDel Hurricane Supplemental

```{r}
n=16
x = format((pb$`Total Actual Cost`[n]/pb$Budget[n])*100, digits = 2)
```

`r x`% spent

Another chunk of money (\$17k) from IRA for next hurricane deployment. Crowley (20%) and glider team will charge.

```{r}
n=16
difftime(strptime(pb$`Sponsor End Date`[n], format = "%Y-%m-%d"), + strptime("2025-07-08", format = "%Y-%m-%d"),units="days")

kable(pb[n,], format.args = list(big.mark = ",")) %>%
  kable_styling(font_size = 15)
```

## UVI

```{r}
n=19
x = format((pb$`Total Actual Cost`[n]/pb$Budget[n])*100, digits = 2)
```

`r x`% spent

```{r}
n=19
difftime(strptime(pb$`Sponsor End Date`[n], format = "%Y-%m-%d"), + strptime("2025-07-08", format = "%Y-%m-%d"),units="days")

kable(pb[n,], format.args = list(big.mark = ",")) %>%
  kable_styling(font_size = 15)
```

## Ramboll

```{r}
n=20
x = format((pb$`Total Actual Cost`[n]/pb$Budget[n])*100, digits = 2)
```

`r x`% spent

Stopwork order. Daphne summer and then the remainder goes back.

```{r}
n=20
difftime(strptime(pb$`Sponsor End Date`[n], format = "%Y-%m-%d"), + strptime("2025-07-08", format = "%Y-%m-%d"),units="days")

kable(pb[n,], format.args = list(big.mark = ",")) %>%
  kable_styling(font_size = 15)
```

## BPU Wind

```{r}
n=21
x = format((pb$`Total Actual Cost`[n]/pb$Budget[n])*100, digits = 2)
```

`r x`% spent

Fernando 60%, Mike 10%, Julia 75%. Julia moved to 100% WOW March, then to BPU June. Need to figure out who else can charge here (Lori?).

```{r}
n=21
difftime(strptime(pb$`Sponsor End Date`[n], format = "%Y-%m-%d"), + strptime("2025-07-08", format = "%Y-%m-%d"),units="days")

kable(pb[n,], format.args = list(big.mark = ",")) %>%
  kable_styling(font_size = 15)
```

## SOCCOM

```{r}
n=c(17,22)
x = format((pb$`Total Actual Cost`[n]/pb$Budget[n])*100, digits = 2)
```

`r x`% spent

SOCCOM 2: Need to charge another month of Oscar, summer for Quentin, Mya, and Teemer. SOCCOM 3: Year 1 of 4

```{r}
n=c(17,22)
difftime(strptime(pb$`Sponsor End Date`[n], format = "%Y-%m-%d"), + strptime("2025-07-08", format = "%Y-%m-%d"),units="days")

kable(pb[n,], format.args = list(big.mark = ",")) %>%
  kable_styling(font_size = 15) 
```

## RIOS

```{r}
n=24
x = format((pb$`Total Actual Cost`[n]/pb$Budget[n])*100, digits = 2)
```

`r x`% spent

```{r}
n=24
difftime(strptime(pb$`Sponsor End Date`[n], format = "%Y-%m-%d"), + strptime("2025-07-08", format = "%Y-%m-%d"),units="days")

kable(pb[n,], format.args = list(big.mark = ",")) %>%
  kable_styling(font_size = 15)
```

# Under 6 months 
to Jan. 2026

## SNJ-DEP Ecoglider Phase 1

```{r}
n=25
x = format((pb$`Total Actual Cost`[n]/pb$Budget[n])*100, digits = 2)
```

`r x`% spent

100% Delphine, 65% Lori, 30% Jess, 30% Brian charging

```{r}
n=25
difftime(strptime(pb$`Sponsor End Date`[n], format = "%Y-%m-%d"), + strptime("2025-07-08", format = "%Y-%m-%d"),units="days")

kable(pb[n,], format.args = list(big.mark = ",")) %>%
  kable_styling(font_size = 15)
```

## Cod 

Jasco still needs to send final invoice (sent it for REV already). Steve is working on splitting the Jasco invoices between REV and SRW, most have already been moved. NCE for REV to next year.

```{r}
n=c(26,33)
x = format((pb$`Total Actual Cost`[n]/pb$Budget[n])*100, digits = 2)
```

`r x`% spent

```{r}
n=c(26,33)
difftime(strptime(pb$`Sponsor End Date`[n], format = "%Y-%m-%d"), + strptime("2025-07-08", format = "%Y-%m-%d"),units="days")

kable(pb[n,], format.args = list(big.mark = ",")) %>%
  kable_styling(font_size = 15)
```

## SNJ-DEP RMI Ocean Observing

```{r}
n=27
x = format((pb$`Total Actual Cost`[n]/pb$Budget[n])*100, digits = 2)
```

`r x`% spent

```{r}
n=27
difftime(strptime(pb$`Sponsor End Date`[n], format = "%Y-%m-%d"), + strptime("2025-07-08", format = "%Y-%m-%d"),units="days")

kable(pb[n,], format.args = list(big.mark = ",")) %>%
  kable_styling(font_size = 15)
```

## Seaforestation

```{r}
n=28
x = format((pb$`Total Actual Cost`[n]/pb$Budget[n])*100, digits = 2)
```

`r x`% spent

```{r}
n=28
difftime(strptime(pb$`Sponsor End Date`[n], format = "%Y-%m-%d"), + strptime("2025-07-08", format = "%Y-%m-%d"),units="days")

kable(pb[n,], format.args = list(big.mark = ",")) %>%
  kable_styling(font_size = 15)
```

## UConn

```{r}
n=29
x = format((pb$`Total Actual Cost`[n]/pb$Budget[n])*100, digits = 2)
```

`r x`% spent

```{r}
n=29
difftime(strptime(pb$`Sponsor End Date`[n], format = "%Y-%m-%d"), + strptime("2025-07-08", format = "%Y-%m-%d"),units="days")

kable(pb[n,], format.args = list(big.mark = ",")) %>%
  kable_styling(font_size = 15)
```

## Del

```{r}
n=30
x = format((pb$`Total Actual Cost`[n]/pb$Budget[n])*100, digits = 2)
```

`r x`% spent

```{r}
n=30
difftime(strptime(pb$`Sponsor End Date`[n], format = "%Y-%m-%d"), + strptime("2025-07-08", format = "%Y-%m-%d"),units="days")

kable(pb[n,], format.args = list(big.mark = ",")) %>%
  kable_styling(font_size = 15)
```
