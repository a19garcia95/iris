
R version 3.3.2 (2016-10-31) -- "Sincere Pumpkin Patch"
Copyright (C) 2016 The R Foundation for Statistical Computing
Platform: x86_64-apple-darwin13.4.0 (64-bit)

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

Natural language support but running in an English locale

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

> cd
Error: object 'cd' not found
> cd Desktop
Error: unexpected symbol in "cd Desktop"
> names(iris)
[1] "Sepal.Length" "Sepal.Width"  "Petal.Length" "Petal.Width"  "Species"     
> str(iris)
'data.frame':	150 obs. of  5 variables:
  $ Sepal.Length: num  5.1 4.9 4.7 4.6 5 5.4 4.6 5 4.4 4.9 ...
$ Sepal.Width : num  3.5 3 3.2 3.1 3.6 3.9 3.4 3.4 2.9 3.1 ...
$ Petal.Length: num  1.4 1.4 1.3 1.5 1.4 1.7 1.4 1.5 1.4 1.5 ...
$ Petal.Width : num  0.2 0.2 0.2 0.2 0.2 0.4 0.3 0.2 0.2 0.1 ...
$ Species     : Factor w/ 3 levels "setosa","versicolor",..: 1 1 1 1 1 1 1 1 1 1 ...
> ?str()
> str?
+ 
  + 
  + exit
Error in `?`(str, exit) : 
  no documentation of type ‘str’ and topic ‘exit’ (or error in processing help)
> iris$new_class_specis<-as.character(iris$Species)
> iris$new_class_specis<-NULL
> iris$new_class_specis<-gsub("%","",iris$Species)
> iris$new_class_specis
[1] "setosa"     "setosa"     "setosa"     "setosa"     "setosa"     "setosa"     "setosa"     "setosa"    
[9] "setosa"     "setosa"     "setosa"     "setosa"     "setosa"     "setosa"     "setosa"     "setosa"    
[17] "setosa"     "setosa"     "setosa"     "setosa"     "setosa"     "setosa"     "setosa"     "setosa"    
[25] "setosa"     "setosa"     "setosa"     "setosa"     "setosa"     "setosa"     "setosa"     "setosa"    
[33] "setosa"     "setosa"     "setosa"     "setosa"     "setosa"     "setosa"     "setosa"     "setosa"    
[41] "setosa"     "setosa"     "setosa"     "setosa"     "setosa"     "setosa"     "setosa"     "setosa"    
[49] "setosa"     "setosa"     "versicolor" "versicolor" "versicolor" "versicolor" "versicolor" "versicolor"
[57] "versicolor" "versicolor" "versicolor" "versicolor" "versicolor" "versicolor" "versicolor" "versicolor"
[65] "versicolor" "versicolor" "versicolor" "versicolor" "versicolor" "versicolor" "versicolor" "versicolor"
[73] "versicolor" "versicolor" "versicolor" "versicolor" "versicolor" "versicolor" "versicolor" "versicolor"
[81] "versicolor" "versicolor" "versicolor" "versicolor" "versicolor" "versicolor" "versicolor" "versicolor"
[89] "versicolor" "versicolor" "versicolor" "versicolor" "versicolor" "versicolor" "versicolor" "versicolor"
[97] "versicolor" "versicolor" "versicolor" "versicolor" "virginica"  "virginica"  "virginica"  "virginica" 
[105] "virginica"  "virginica"  "virginica"  "virginica"  "virginica"  "virginica"  "virginica"  "virginica" 
[113] "virginica"  "virginica"  "virginica"  "virginica"  "virginica"  "virginica"  "virginica"  "virginica" 
[121] "virginica"  "virginica"  "virginica"  "virginica"  "virginica"  "virginica"  "virginica"  "virginica" 
[129] "virginica"  "virginica"  "virginica"  "virginica"  "virginica"  "virginica"  "virginica"  "virginica" 
[137] "virginica"  "virginica"  "virginica"  "virginica"  "virginica"  "virginica"  "virginica"  "virginica" 
[145] "virginica"  "virginica"  "virginica"  "virginica"  "virginica"  "virginica" 
> iris<-na.omit(iris)
> summary(iris$new_class_specis)
Length     Class      Mode 
150 character character 
> summary(iris)
Sepal.Length    Sepal.Width     Petal.Length    Petal.Width          Species   new_class_specis  
Min.   :4.300   Min.   :2.000   Min.   :1.000   Min.   :0.100   setosa    :50   Length:150        
1st Qu.:5.100   1st Qu.:2.800   1st Qu.:1.600   1st Qu.:0.300   versicolor:50   Class :character  
Median :5.800   Median :3.000   Median :4.350   Median :1.300   virginica :50   Mode  :character  
Mean   :5.843   Mean   :3.057   Mean   :3.758   Mean   :1.199                                     
3rd Qu.:6.400   3rd Qu.:3.300   3rd Qu.:5.100   3rd Qu.:1.800                                     
Max.   :7.900   Max.   :4.400   Max.   :6.900   Max.   :2.500                                     
> plot(iris)
Error in plot.window(...) : need finite 'xlim' values
In addition: Warning messages:
  1: In data.matrix(x) : NAs introduced by coercion
2: In min(x) : no non-missing arguments to min; returning Inf
3: In max(x) : no non-missing arguments to max; returning -Inf
> plot(iris$Sepal.Length, iris$Sepal.Width, main="Length vs. Width", xlab="Length", ylab="Miles Per Gallon")
> plot(iris, col=iris$Species)
Error in plot.window(...) : need finite 'xlim' values
In addition: Warning messages:
  1: In data.matrix(x) : NAs introduced by coercion
2: In min(x) : no non-missing arguments to min; returning Inf
3: In max(x) : no non-missing arguments to max; returning -Inf
> legend(7,4.3,unique(iris$Species),col=1:length(iris$Species),pch=1)
> par(mfrow=c(1,2))
> plot(iris$Petal.Length)
> boxplot(iris$Petal.Length~iris$Species)
> par(mfrow=c(2,2))
> for(i in 1:4) boxplot(iris[,1] ~ Species, data=iris, main = names(iris)[i])
> clear
Error: object 'clear' not found
> cor(iris$Sepal.Length, iris$Species)
Error in cor(iris$Sepal.Length, iris$Species) : 'y' must be numeric
> cor(iris$Sepal.Length, iris$new_class_specis)
Error in cor(iris$Sepal.Length, iris$new_class_specis) : 
  'y' must be numeric
> cor(iris$Sepal.Length, iris$Petal.Length)
[1] 0.8717538
> fit <- lm(iris$Sepal.Length ~ iris$Petal.Length)
> summary(fit)

Call:
  lm(formula = iris$Sepal.Length ~ iris$Petal.Length)

Residuals:
  Min       1Q   Median       3Q      Max 
-1.24675 -0.29657 -0.01515  0.27676  1.00269 

Coefficients:
  Estimate Std. Error t value Pr(>|t|)    
(Intercept)        4.30660    0.07839   54.94   <2e-16 ***
  iris$Petal.Length  0.40892    0.01889   21.65   <2e-16 ***
  ---
  Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 0.4071 on 148 degrees of freedom
Multiple R-squared:   0.76,	Adjusted R-squared:  0.7583 
F-statistic: 468.6 on 1 and 148 DF,  p-value: < 2.2e-16

> plot(fit)
> data("iris")
> data(iris)
> x <- iris[,1:4]
> y <- iris[,5]
> fit <- plsda(x,y,probMethod="Bayes")
Error: could not find function "plsda"
> library(caret)
Error in library(caret) : there is no package called ‘caret’
> library('caret)
         
