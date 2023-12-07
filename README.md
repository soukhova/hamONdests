
<!-- README.md is generated from README.Rmd. Please edit that file -->

# hamONdests

<!-- badges: start -->
<!-- badges: end -->

HamONdests is a data-package which contains a growing set of
destinations and their estimated ‘supplies’ in Hamilton, Ontario,
Canada. It currently contains schools, but will contain
municipally-owned land, health care and health and residential care
facilities.

The aim of this data-package is to facilitate the calculation of
accessibility and mobility measures in the transportation planning
context. The majority of data is sourced from Hamilton’s [Open Data
Portal](https://open.hamilton.ca/) and is augmented with additional open
data from higher levels of government (provincial and federal),
predicted values, and/or data from OpenStreetMap.

The HamONdests package is still a work in progress and is available here
and the vignettes can be viewed here.

## Installation

You can install the released version of HamONdest using:

``` r
if(!require(remotes)){
    install.packages("remotes")
    library(remotes)
}
remotes::install_github("soukhova/HamONdests")
```

## Example

Below we demonstrate the spatial extent of the dataset:

``` r
library(hamONdests)
## basic example code
```

…
