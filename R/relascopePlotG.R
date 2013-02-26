#' @title Estimate the basal area (\eqn{m^2/ha}) from a relascope plot
#'
#' 
#'
#' @param relascopeBand the relascopic band used in the relascopic plot (1, 2, 4), default: 2
#' @param treesCount the number of trees counted in the relascopic plot
#' @export
#' @return a numeric estimate for G in (\eqn{m^2/ha})
#' @author Marco Bascietto \email{marco.bascietto@@ibaf.cnr.it}
relascopePlotG <- function(relascopeBand = 2, treesCount) {
  relascopeBand * treesCount
}