#' Estimate the plot basal area in a traditional plot
#'
#' The stimate is simply the sum of trees basal area
#'
#' @param treeG a vector of numeric values od trees basal area
#' @export
#' @family structuralAnalysis
#' @return a numeric estimate for G in the same unit of measure of \code{treeG}
#' @author Marco Bascietto \email{marco.bascietto@@ibaf.cnr.it}
tpBasalArea <- function(treeG) {
  sum(treeG)
}
