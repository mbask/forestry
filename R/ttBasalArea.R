#' Basal area of a tree given its diameter
#'
#' Basal area is computed as \eqn{g = \pi * \frac{d^2}{4}}
#'
#' The function is vectorized, accepts a single value or a vector of values.
#' No conversion between measuring units is carried out (\emph{ie} \eqn{cm} in, \eqn{cm^2} out, or \eqn{m} in, \eqn{m^2} out)
#'
#' @param treeDbh a single tree diameter or vector of tree diameters
#' @return a single value of a vector of values
#' @export
#' @family structuralAnalysis
#' @examples
#' # dbh from an ideal even-aged forest, in cm
#' dbhList <- runif(10, min = 30, max = 40)
#' data.frame(dbh = dbhList, g = ttBasalArea(dbhList))
#' @author Marco Bascietto \email{marco.bascietto@@ibaf.cnr.it}
ttBasalArea <- function(treeDbh) {
  pi * treeDbh^2 / 4
}