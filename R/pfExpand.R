#' Convert to forest level a variable measured or estimated, at traditional plot level
#'
#' The function guesses the unit of measure of plot size (\eqn{ha} or \eqn{m^2}) if parameter \code{unit} is set to \code{auto}:
#' \itemize{
#'  \item \eqn{m^2} one or more plots have size higher than 1
#'  \item \eqn{ha} all plots have size lower or equal than 1
#' Therefore, should larger than 1 ha plots be carried out the \code{unit} parameter should be explicitly set to either \code{ha} or \code{m2}.
#' }
#' 
#' @note The function is vectorized both for \code{variable} and for \code{plotSize}. Be careful of the recycling rule, see example section.
#' @param variable the variable measured or estimated in the traditional plot
#' @param plotSize the plot size
#' @param unit a character value to indicate the unit of measure of \code{plotSize}: \code{ha}, \code{m2}, \code{auto} (default value)
#' @return a single or vector of numeric values, not rounded
#' @export
#' @family structuralAnalysis
#' @examples
#' # dbh from an ideal even-aged plot, in cm
#' dbhList <- runif(10, min = 30, max = 40)
#' # Tree density, plot size in m^2
#' pfExpand(length(dbhList), 500)
#' # Tree density, plot size in ha
#' pfExpand(length(dbhList), 0.05)
#' # Basal area at forest level
#' pfExpand(tpBasalArea(dbhList), 0.05)
#' # Vector of tree counts for 10 plots
#' treeCountList <- sample(30:60, size = 10, replace = TRUE)
#' # Tree density, plot size is 0.05 ha  
#' pfExpand(treeCountList, 0.05)
#' # Tree density, first plot size is 0.05 ha, all other plots 0.04 ha
#' pfExpand(treeCountList, c(0.05, 0.04:9))
#' # Tree density, first plot size is 0.05 ha, all other plots 0.04 ha,
#' # wrong call, c(0.05, 0.04) is recycled 5 times
#' pfExpand(treeCountList, c(0.05, 0.04))
#' # Tree density, first plot size is 500 m^2, all other plots 0.04 ha,
#' # be aware that the unit of measure of all plots size is assumed to be m^2 because one plot size is given as m^2
#' pfExpand(treeCountList, c(500, 0.04:9))
#' @author Marco Bascietto \email{marco.bascietto@@ibaf.cnr.it}
pfExpand <- function(variable, plotSize, unit = "auto") {
  conversion <- switch(
    unit
    , m2  = 1e4
    , ha  = 1
    , auto = if (any(plotSize > 1)) 1e4 else 1
  )
  variable * conversion / plotSize
}
