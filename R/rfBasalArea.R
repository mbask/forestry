#' Estimate the forest basal area (\eqn{m^2/ha}) from a relascopic plot
#'
#' 
#'
#' @param relascopeBand the relascopic band used in a relascopic plot (1, 2, 4), default: 2
#' @param treeCount the number of trees counted in a relascopic plot
#' @export
#' @family structuralAnalysis
#' @return a numeric estimate for G in (\eqn{m^2/ha})
#' @author Marco Bascietto \email{marco.bascietto@@ibaf.cnr.it}
rfBasalArea <- function(treeCount, relascopeBand = 2) {
  relascopeBand * treeCount
}
