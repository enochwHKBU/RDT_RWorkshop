# Workshop: Introduction to R for Data Analysis
## Hosted by Enoch WONG (DIR, HKBU Library)

A 1.5-hour workshop by Enoch WONG (DIR, HKBU Library), designed for HKBU staff and students from diverse disciplines to learn **R for data science** (exploration and transformation) with plenty of **hands-on practice**.

![RStudio Tidyverse](https://upload.wikimedia.org/wikipedia/commons/d/d0/RStudio_logo_flat.svg)

---

## Table of Contents
- [Repo Structure](#repo-structure)
- [Workshop Outline](#workshop-outline)
- [Setup Instructions](#setup-instructions)
- [Resources](#resources)
- [Credits](#credits)

---

## Repo Structure

├── cheatsheets/ # Key cheat sheets for R and tidyverse
│ ├── dplyr.pdf
│ ├── ggplot2.pdf
│ └── rstudio.pdf
│ └── tidyr.pdf
├── codeSnippets/ # R scripts used in the workshop
│ ├── code.R
│ └── handson.R
└── README.md # This file

---

## Workshop Outline

### 1. **Why R?**
  - **Domain-specific packages**:
    - Journalism: `rtweet`, `rvest`
    - Geography: `sf`, `leaflet`
    - Accounting: `tidyquant`, `lubridate`

### 2. **Data Import & Exploration**
  - code: [code.R](codeSnippets/code.R)
  - key to hands-on activities: [handson.R](codeSnippets/handson.R)
  - Key functions: `read_csv()`, `glimpse()`, `count()`, `n_distinct()`

### 3. **Data Transformation with `dplyr`**
  - Key functions: `filter()`, `mutate()`, `group_by()`, `summarize()`

### 4. **Quick Visualization**
  - Compare `ggplot2` (declarative) vs. `matplotlib` (procedural)

---

## Setup Instructions

1. **Install R and RStudio**:
   - [R Download](https://cran.r-project.org/)
   - [RStudio Download](https://www.rstudio.com/products/rstudio/download/)

2. **Install Packages**:
   install.packages("tidyverse")  # Includes dplyr, ggplot2, readr, etc.
   install.packages("tidyTuesday")

---

## Resources

   - Cheatsheets: See cheatsheets/ folder.

### Books:
   - R for Data Science (free online at https://r4ds.hadley.nz/)
   - R Markdown: The Definitive Guide (also free online at https://bookdown.org/yihui/rmarkdown/)
### Communities:
   - RStudio Community
   - #rstats on Twitter

---

## Credits

   - Workshop design inspired by *R for Data Science (2e)*.
   - Sample data adapted from *TidyTuesday*, a weekly data project aimed at the R ecosystem, organised by the *Data Science Learning Community* (https://dslc.io).
   - Cheatsheets by *Posit* and *RStudio*.

---

Contribute via pull requests or issues. For questions, email [libms (at) hkbu.edu.hk].