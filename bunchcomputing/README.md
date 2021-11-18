
<!-- README.md is generated from README.Rmd. Please edit that file -->

# bunchcomputing

<!-- badges: start -->
<!-- badges: end -->

The goal of bunchcomputing is to compute summary
statistics(means,median) on every columns in the dataframe.

## Installation

bunchcomputing is not yet on CRAN. But, you can download it from this
repository using the following R command:

``` r
install.packages("bunchcomputing")
```

And the development version from [GitHub](https://github.com/) with:

``` r
devtools::install_github("WYC401/WYC_function")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(bunchcomputing)
mean_all_numeric_variables(data.frame(data_1=c(1,2,3),data_2=c(0.2,0.4,0.4)))
#>    data_1    data_2 
#> 2.0000000 0.3333333

## basic example code
```

The package is special because it can ignore the non-numeric columns.

``` r
library(bunchcomputing)
mean_all_numeric_variables(base::data.frame(a=c(1,2),b=c("d","d")))
#>   a 
#> 1.5
```
