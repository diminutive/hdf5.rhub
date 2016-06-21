#' HDF5
#'
#' Open GDAL HDF5 autotest file.
#'
#' See mdsumner/hdf5.rhub/data-raw/  for details on getting this file.
#' @return string, either "GDALReadOnlyDataset" or "try-error"
#' @export
#' @importFrom rgdal GDAL.open GDAL.close
#' @examples
#' groups_h5()
groups_h5 <- function() {
  fpath <- system.file("extdata", "groups.h5", package = "hdf5.rhub")
  subdatasetpath <- sprintf('HDF5:"%s"://MyGroup/Group_A/dset2', fpath)
  #subdatasetpath <- sprintf("HDF5:'%s'://MyGroup/Group_A/dset2", fpath)
  con <- try(rgdal::GDAL.open(subdatasetpath))
  retclass <- as.character(class(con))
  if (!inherits(con, "try-error")) rgdal::GDAL.close(con)
  return(retclass)
}
