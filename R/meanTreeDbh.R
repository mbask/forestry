#' Estimate mean tree diameter
#'
#' Mean tree dbh is estimated as the the dbh of the mean basal area tree: \eqn{\bar{d} = 2 \cdot \sqrt{\frac{G}{N * \pi}}} at forest level or \eqn{\bar{d} = 2 \cdot \sqrt{\frac{g}{n * \pi}}} at plot level
#' 
#' @note The unit of measure of the result if the same as the basal area
#' 
#' @param basalArea basal area at plot level or forest level
#' @param treeDensity count of trees at plot level or forest level
#' @return a single numeric value (estimate of mean tree dbh), not rounded, in the same unit of measure as basal area
#' @export
#' @examples
#' # dbh from an ideal even-aged plot
#' dbhList <- runif(10, min = 30, max = 40)
#' # basal area at forest level, im m^2/ha
#' G <- rfBasalArea(length(dbhList))
#' # tree density in ha^-1
#' N <- rfTreeDensity(dbhList)
#' # mean tree dbh at forest level, based on a relascopic plot, in cm
#' meanTreeDbh(G, N) * 100
#' @author Marco Bascietto \email{marco.bascietto@@ibaf.cnr.it}
meanTreeDbh <- function(basalArea, treeDensity) {
  2 * sqrt(basalArea / treeDensity / pi)
}
