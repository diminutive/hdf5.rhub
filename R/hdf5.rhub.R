#' HDF5
#'
#' Open GDAL HDF5 autotest file.
#'
#' See mdsumner/hdf5.rhub/data-raw/  for details on getting this file.
#' @return
#' @export
#'
#' @examples
groups_h5 <- function() {
  fpath <- system.file("extdata", "groups.h5", package = "hdf5.rhub")
  subdatasetpath <- sprintf('HDF5:"%s"://MyGroup/Group_A/dset2', fpath)
  rgdal::GDAL.open(subdatasetpath)
}
