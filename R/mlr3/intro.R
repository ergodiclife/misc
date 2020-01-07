### Hello world example for mlr3
###
### Date created: 2019-01-07
### Date updated: 2019-01-07
library(mlr3)

### Create learning task
task_iris <- TaskClassif$new(id = "iris", backend = iris, target = "Species")
task_iris

### Load learner and set hyperparameter
learner <- lrn("classif.rpart", cp = 0.01)

### Train/test split
train_set <- sample(task_iris$nrow, 0.8 * task_iris$nrow)
test_set <- setdiff(seq_len(task_iris$nrow), train_set)

### Train the model
learner$train(task_iris, row_ids = train_set)

### Predict data
prediction <- learner$predict(task_iris, row_ids = test_set)

### Calculate performance
prediction$confusion

measure <- msr("classif.acc")
prediction$score(measure)

### Automatic resampling
resampling <- rsmp("cv", folds = 3L)
rr <- resample(task_iris, learner, resampling)
rr$score(measure)

rr$aggregate(measure)



### URL to book: https://mlr3book.mlr-org.com/
library(data.table)
design <- benchmark_grid(
  tasks = tsk("iris"),
  learners = list(lrn("classif.rpart"), lrn("classif.featureless")),
  resamplings = rsmp("holdout")
)
print(design)

### Sonar
data("Sonar", package = "mlbench")
task <- TaskClassif$new(id = "Sonar", Sonar, target = "Class", positive = "R")
## Warning: Using character row ids although the rownames of 'data' looks like
## integers

### switch positive class to level 'M'
task$positive <- "M"
