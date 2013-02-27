\name{rfBasalArea}
\alias{rfBasalArea}
\title{Estimate the forest basal area (\eqn{m^2/ha}) from a relascopic plot}
\usage{
  rfBasalArea(treeCount, relascopeBand = 2)
}
\arguments{
  \item{relascopeBand}{the relascopic band used in a
  relascopic plot (1, 2, 4), default: 2}

  \item{treeCount}{the number of trees counted in a
  relascopic plot}
}
\value{
  a numeric estimate for G in (\eqn{m^2/ha})
}
\description{
  Estimate the forest basal area (\eqn{m^2/ha}) from a
  relascopic plot
}
\author{
  Marco Bascietto \email{marco.bascietto@ibaf.cnr.it}
}
\seealso{
  Other structuralAnalysis: \code{\link{pfTreeDensity}},
  \code{\link{rfTreeDensity}}, \code{\link{ttBasalArea}},
  \code{\link{ttMeanDbh}}
}

