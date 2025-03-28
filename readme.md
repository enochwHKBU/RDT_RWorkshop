# Workshop: Introduction to Data Science with R
### Hosted by Enoch WONG (DIR, HKBU Library)
###

A 1.5-hour workshop by Enoch WONG (DIR, HKBU Library), designed for HKBU staff and students to learn **R for data science** (exploration and transformation) with plenty of **hands-on practice**.

![RStudio](https://upload.wikimedia.org/wikipedia/commons/d/d0/RStudio_logo_flat.svg)

---

## Table of Contents
- [Repo Structure](#repo-structure)
- [Workshop Outline](#workshop-outline)
- [Setup Instructions](#setup-instructions)
- [Resources](#resources)
- [Credits](#credits)

---

## Repo Structure

```
.  
├── cheatsheets/ # Key cheatsheets for R and tidyverse  
│ ├── dplyr.pdf  
│ ├── ggplot2.pdf  
│ ├── rstudio.pdf  
│ └── tidyr.pdf  
├── codeSnippets/ # R scripts used in the workshop  
│ ├── code.R  
│ └── handson.R  
└── README.md # This file
```

---

## Workshop Outline

### 1. **Why R?**
  - **Domain-specific packages**:
    - Journalism: `rtweet`, `rvest`
    - Geography: `sf`, `leaflet`
    - Accounting: `tidyquant`, `lubridate`

### 2. **Data Import & Exploration**
  - Code: [code.R](codeSnippets/code.R)
  - Key to hands-on activities: [handson.R](codeSnippets/handson.R)
  - Key functions: `read_csv()`, `glimpse()`, `count()`, `n_distinct()`

### 3. **Data Transformation with `dplyr`**
  - Key functions: `filter()`, `mutate()`, `group_by()`, `summarise()`

### 4. **Quick Visualisation**
  - Compare R's `ggplot2` (declarative) vs. Python's `matplotlib` (procedural)

---

## Setup Instructions

1. **Install R and RStudio**:
   - [R Download](https://cran.r-project.org/)
   - [RStudio Download](https://www.rstudio.com/products/rstudio/download/)

2. **Install Packages**:
   - `install.packages("tidyverse")`  # Includes dplyr, ggplot2, readr, etc.
   - `install.packages("tidyTuesday")`

---

## Resources

   - Cheatsheets: See [cheatsheets/](cheatsheets) folder.
   - [Tidy Data](https://doi.org/10.18637/jss.v059.i10) by Hadley Wickham (2014)

### Books:
   - [R for Data Science (2e)](https://r4ds.hadley.nz/) by Hadley Wickham, Mine Çetinkaya-Rundel, and Garrett Grolemund (2023)
   - [R Markdown: The Definitive Guide](https://bookdown.org/yihui/rmarkdown/) by Yihui Xie, J. J. Allaire, and Garrett Grolemund (2018)
### Communities:
   - [RStudio Community](https://forum.posit.co/c/rstudio-ide/9)
   - [#rstats on Reddit](https://www.reddit.com/r/rstats/)

---

## Credits

   - Workshop design inspired by [*R for Data Science (2e)*](https://r4ds.hadley.nz/).
   - Sample data adapted from *TidyTuesday*, a weekly data project aimed at the R ecosystem, organised by the [*Data Science Learning Community*](https://dslc.io).
   - The Pixar Films data used during the workshop comes from an article by Eric Leung.  Please read it at https://erictleung.com/pixarfilms/articles/pixar_film_ratings.html.
   - Cheatsheets by *Posit* and *RStudio*.

---

Contribute via pull requests or issues.  For questions, email libms (at) hkbu.edu.hk.  Visit our Cluster website at https://digital.lib.hkbu.edu.hk/digital/index.php.  
  
Also, as the only [centerNet](https://dhcenternet.org/) member in HK and China, we proudly develop and host a range of digital scholarship projects in collaboration with various faculties.  You may see them at https://digital.lib.hkbu.edu.hk/digital/DSS.php.