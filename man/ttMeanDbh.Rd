\name{ttMeanDbh}
\alias{ttMeanDbh}
\title{Estimate mean tree diameter}
\usage{
  ttMeanDbh(basalArea, treeDensity)
}
\arguments{
  \item{basalArea}{basal area at plot level or forest
  level}

  \item{treeDensity}{count of trees at plot level or forest
  level}
}
\value{
  a single numeric value (estimate of mean tree dbh), not
  rounded, in the same unit of measure as basal area
}
\description{
  Mean tree dbh is estimated as the the dbh of the mean
  basal area tree: \eqn{\bar{d} = 2 \cdot \sqrt{\frac{G}{N
  * \pi}}} at forest level or \eqn{\bar{d} = 2 \cdot
  \sqrt{\frac{g}{n * \pi}}} at plot level
}
\note{
  The unit of measure of the result if the same as the
  basal area
}
\examples{
# dbh from an ideal even-aged plot, in cm
dbhList <- runif(10, min = 30, max = 40)
# basal area at forest level, im m^2/ha
G <- rfBasalArea(length(dbhList))
# tree density in ha^-1
N <- rfTreeDensity(dbhList)
# mean tree dbh at forest level, in m
ttMeanDbh(G, N)
}
\author{
  Marco Bascietto \email{marco.bascietto@ibaf.cnr.it}
}
\seealso{
  Other structuralAnalysis: \code{\link{pfExpand}},
  \code{\link{rfBasalArea}}, \code{\link{rfTreeDensity}},
  \code{\link{tpBasalArea}}, \code{\link{ttBasalArea}}
}

