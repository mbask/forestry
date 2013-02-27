#' Tree density at forest level, based on a relascopic plot
#'
#' Tree density is estimated as \eqn{N=\phi \cdot \sum_{i=1}^{n_\phi}{\frac{1}{g_i}}} where \eqn{\phi} is the relascopic band used during sampling, \eqn{n_\phi} is the total count of trees found to be inside of the plot measured with the \eqn{\phi} band.
#' 
#' The function guesses the unit of measure of tree basal area (\eqn{cm^2} or \eqn{m^2}) if parameter \code{unit} is set to "\code{auto}":
#' \itemize{
#'  \item \eqn{cm^2} one or more trees have basal area higher than 18.09557 (\emph{i.e.} tree dbh \eqn{> 2.4})
#'  \item \eqn{m^2} all trees have basal area lower or equal than 18.09557(\emph{i.e.} tree dbh \eqn{\leq 2.4})
#' Therefore, should trees larger than 2.4 m be measured the \code{unit} parameter should be explicitly set to either \code{cm2} or \code{m2}.
#' }
#' 
#' @note The 2.4 dbh threshold has been chosen as it is the most used lower limit for dbh, in cm, in tree measurements. Therefore if a tree dbh is \eqn{\leq 2.4} than its unit of measurement is \eqn{m}, otherwise it may be either \eqn{cm} and \eqn{m}, the functions assumes it is \eqn{cm}.
#' 
#' @param treeG a single tree diameter or vector of tree diameters \emph{in cm}
#' @param relascopeBand the relascopic band used in the relascopic plot (1, 2, 4), default: 2
#' @param unit a character value to indicate the unit of measure of \code{treeDbh}: \code{cm2}, \code{m2}, \code{auto} (default value)
#' @return a single numeric value (estimate of count of trees per hectare), not rounded
#' @seealso \code{\link{ttBasalArea}}
#' @export
#' @family structuralAnalysis
#' @examples
#' # dbh from an ideal even-aged plot, in cm
#' dbhList <- runif(10, min = 30, max = 40)
#' # Basal area of trees
#' g <- ttBasalArea(dbhList)
#' rfTreeDensity(g)
#' rfTreeDensity(g/1e4)
#' @author Marco Bascietto \email{marco.bascietto@@ibaf.cnr.it}
rfTreeDensity <- function(treeG, relascopeBand = 2, unit = "auto") {
  conversion <- switch(
    unit
    , cm2 = 1e4
    , m2  = 1
    , auto = if (any(treeG > 18.09557)) 1e4 else 1
    )
  treeG <- treeG / conversion
  relascopeBand * sum(treeG^-1)
}
