# README

# Meet the penguins

The three species of penguins we are looking at today are called
Chinstrap, Gentoo and Adelie. They live on the islands of Biscoe, Dream
and Torgersen. We have access to information about 344 different
penguins, as shown below:


    Attaching package: 'dplyr'

    The following objects are masked from 'package:stats':

        filter, lag

    The following objects are masked from 'package:base':

        intersect, setdiff, setequal, union

<div class="cell-output-display">

| species   | island    | bill_length_mm | bill_depth_mm | flipper_length_mm | body_mass_g | sex    | year |
|:----------|:----------|---------------:|--------------:|------------------:|------------:|:-------|-----:|
| Chinstrap | Dream     |           49.3 |          19.9 |               203 |        4050 | male   | 2009 |
| Adelie    | Biscoe    |           36.4 |          17.1 |               184 |        2850 | female | 2008 |
| Gentoo    | Biscoe    |           45.3 |          13.8 |               208 |        4200 | female | 2008 |
| Adelie    | Torgersen |           42.9 |          17.6 |               196 |        4700 | male   | 2008 |
| Gentoo    | Biscoe    |           50.8 |          15.7 |               226 |        5200 | male   | 2009 |
| Gentoo    | Biscoe    |           50.7 |          15.0 |               223 |        5550 | male   | 2008 |
| Adelie    | Biscoe    |           37.9 |          18.6 |               172 |        3150 | female | 2007 |
| Adelie    | Torgersen |           40.9 |          16.8 |               191 |        3700 | female | 2008 |
| Chinstrap | Dream     |           50.9 |          19.1 |               196 |        3550 | male   | 2008 |
| Chinstrap | Dream     |           42.5 |          17.3 |               187 |        3350 | female | 2009 |

</div>

# What do we want to find out?

Here are some things we want to know about the penguins:

- Which island has the most penguins? Which island has the most Adelie
  penguins?
- Is there a relationship between bill length and bill depth? For
  example, do penguins with longer bills also have deeper bills?
- Do female penguins have longer or shorter flippers than male penguins?
- Which species of penguin has the longest flippers?
- How heavy is the heaviest penguin? Which species is the heaviest?
- Anything else you want to find out!

Work with your group to make a chart or a table answering your question.

``` r
1 + 1
```

    [1] 2

You can add options to executable code like this

    [1] 4

The `echo: false` option disables the printing of code (only output is
displayed).
