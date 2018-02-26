A Short Course in Multivariate Statistical Methods with R / <U+041E><U+043B><U+043E><U+043D> <U+0445><U+044D><U+043C><U+0436><U+044D><U+044D><U+0441><U+0442> <U+0441><U+0442><U+0430><U+0442><U+0438><U+0441><U+0442><U+0438><U+043A><U+0438><U+0439><U+043D> <U+0431><U+043E><U+0433><U+0438><U+043D><U+043E> <U+0445><U+044D><U+043C><U+0436><U+044D><U+044D><U+043D><U+0438><U+0439> <U+0441><U+0443><U+0440><U+0433><U+0430><U+043B><U+0442> R <U+043F><U+0440><U+043E><U+0433><U+0440><U+0430><U+043C><U+043C> <U+0434><U+044D><U+044D><U+0440>
========================================================
author: Ryan Womack, Rutgers University, rwomack@rutgers.edu
date: 2018-02-26
autosize: true

Based on Brian Everitt and Torsten Hothorn, *An Introduction to Applied Multivariate Statistical Analysis with R*, Springer, 2011.

First presented at Mongolian University of Life Sciences, February 2018

Outline
========================================================
* R environment, setup, basics
* Multivariate Analysis - what is it?
* Exploration and Visualization
* Principal Components
* Multidimensional Scaling
* Cluster Analysis
* Exploratory Factor Analysis
* Confirmatory Factor Analysis
    * Structural Equation Modeling
* Repeated Measures
* Additional topics, wrapup

Goals
========================================================
* Exposure to R
* Familiarity with major concepts used in multivariate analysis
* Implement these tools in R
* Learn "how to learn" - investigate and solve your own data problems
* Mastery is not possible in a short course.  Don't worry!

the R environment
========================================================
* **R**
    * free - easy to use and expand
    * open - fast and innovative
    * first - cutting edge of Data Science
* **R Markdown**
    * supports integration of code and text
    * multiple outputs (doc, html, pdf)
* **RStudio**
    * consistent, coding friendly developing environment
    * tools for publishing (Rpres, Rpubs)
    * literate programming
    * cross-platform and server version
    

For more details on authoring R presentations please visit <https://support.rstudio.com/hc/en-us/articles/200486468>.

Setup
========================================================
* download R 
    * [R-project.org](https://r-project.org)
* download RStudio
    * [Rstudio.com](https://rstudio.com)
* code and presentation available from
    * [github.com/ryandata](https://github.com/ryandata/multivariate)
* [Rstudio.cloud](https://rstudio.cloud) is an experimental cloud server for R, free for now
* other texts distributed locally

* [YouTube.com/librarianwomack](https://youtube.com/librarianwomack) has tutorials.  Other projects, papers, materials listed on [ryanwomack.com](https://ryanwomack.com) website

Multivariate Data - what is it?
========================================================
* for each subject, we have multiple variables and/or multiple observations
* if each variable is studied alone, the full structure of the data may not be revealed
* "multivariate statistical analysis is the simultaneous statistical analysis of a collection of variables, which improves upon univariate analysis..."
* Graphical methods and formal analysis will help us understand this data
* Computing has made multivariate methods more routine and widespread
* Cases with missing data can be excluded, or values can be imputed. See "hypo" data.  This is a topic unto itself, so it is not treated further here.

Covariance, Correlation, Distance, and the Multivariate Normal Distribution
========================================================
* Basic statistical methods such as **Covariance** and **Correlation** are starting points for working with multivariate data
* **Distance**, usually Euclidean distance, is also commonly used
* The **Multivariate Normal Distribution** is most commonly assumed as a distribution of the underlying data, when this is required to advance the analysis.
    * The multivariate normal is "well-behaved" in roughly the same way that the univariate normal distribution is.

Probability Plots
========================================================
* We may need to test whether data fits the multivariate normal distribution
* If (MV) normal, distance metric of a single variable will have a chi-squared distribution
* Plot (computation illustrated by R code) should show data points roughly on a straight line
* Can identify outliers

Data Visualization
========================================================
* Advantages of visualization:
    * Easily detect patterns in data
    * Generate greater interest, understanding, and recall [for non-specialists and specialists alike]
    * Compress the meaning of large amounts of data into a smaller set of images
    * Discover hidden structure of data
    
    
Basic Methods applied to Multivariate Data
========================================================
* Scatterplot
* Bivariate Boxplot 
    * alternatively, Convex Hull
* Chi-plot - should fluctuate around zero if independent

Bubble and Glyph plots
========================================================
* Bubble plot - size and shading of bubble introduces additional dimensions to the data
* Glyph plots - multidimensional, can be hard to interpret

Scatterplot Matrix and Kernel Density
========================================================
* Scatterplot matrix plots multiple variables against each other simultaneously
* Kernel density visualizes the distribution of data
* These two methods can be combined to create a powerful summary of multivariate data


Three-dimensional data
========================================================
* Many tools can be used to visualize data in three dimensions
* Just a few examples in the code, more are illustrated at [my Data Visualization workshop](https://github.com/ryandata/DataViz)
