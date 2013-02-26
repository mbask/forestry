#' @title Basal area of a tree given its diameter
#'
#' The function is vectorized, accepts a single value or a vector of values
#'
#' @param treeDbh a single tree diameter or vector of tree diameters
#' @return a single value of a vector of values
#' @export
#' @examples
#' # dbh from an ideal even-aged forest
#' dbhList <- runif(10, min = 30, max = 40)
#' treeBasalArea(dbhList)
#' @author Marco Bascietto \email{marco.bascietto@@ibaf.cnr.it}
ttBasalArea <- function(treeDbh) {
  pi * (treeDbh^2)
}