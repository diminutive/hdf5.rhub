library(testthat)
context("gdal_hdf5")


test_that("we can open the file", {
  expect_equal(groups_h5(), "GDALReadOnlyDataset")
})
