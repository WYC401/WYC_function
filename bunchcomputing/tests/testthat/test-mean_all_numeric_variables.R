test_that("return the numeric column mean", {
  d_1<-data.frame(data_1=c("a","b","c"),data_2=c(0.2,0.6,0.4))
  expect_equal(mean_all_numeric_variables(d_1)[["data_2"]],0.4)
})

test_that("handle the NA's appropriately",{
  d_2<-data.frame(data_1=c(1,2,3),data_2=c(0.2,NA,0.4000000001))
  expect_equal(as.vector(mean_all_numeric_variables(d_2)),c(2.0,0.3))
})

test_that("throw error when encountering the input which is neither a dataframe nor tibble",{
  expect_error(mean_all_numeric_variables("a","non-numeric argument "))
})
