# tenispolaR <img src="man/figures/logo.png" align="right" height=140/>

**Author :** [Adelmo Filho](http://adelmofilho.github.io/)<br/>
**License:** [GPL-3.0](https://opensource.org/licenses/GPL-3.0)

[![lifecycle](https://img.shields.io/badge/lifecycle-stable-brightgreen.svg)](https://www.tidyverse.org/lifecycle/#stable)
[![Travis build status](https://travis-ci.org/adelmofilho/tenispolaR.svg?branch=master)](https://travis-ci.org/adelmofilho/tenispolaR)
[![Coverage status](https://codecov.io/gh/adelmofilho/tenispolaR/branch/master/graph/badge.svg)](https://codecov.io/github/adelmofilho/tenispolaR?branch=master)
[![AppVeyor build status](https://ci.appveyor.com/api/projects/status/github/adelmofilho/tenispolaR?branch=master&svg=true)](https://ci.appveyor.com/project/adelmofilho/tenispolaR)


## Background

This package is a tribute to the 35 years of the publication of the collection of books "Os Karas" by the Brazilian author Pedro Bandeira.

## Installation

You can install the development version from Github with devtools:

``` r
devtools::install_github("adelmofilho/tenispolaR")
```

## Example

This is a basic example which shows ZENIT-POLAR substitution cipher method of encryption

``` r
x <- "orro o um psibinhe tisi er kisir: e ivorre der ceseir, e celpsisae der cisopir!"

encryption(x, key_from = "polar", key_to = "tenis")``

