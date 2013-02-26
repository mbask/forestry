\name{ttBasalArea}
\alias{ttBasalArea}
\title{Basal area of a tree given its diameter}
\usage{
  ttBasalArea(treeDbh)
}
\arguments{
  \item{treeDbh}{a single tree diameter or vector of tree
  diameters}
}
\value{
  a single value of a vector of values
}
\description{
  Basal area is computed as \eqn{g = \pi * \frac{d^2}{4}}
}
\details{
  The function is vectorized, accepts a single value or a
  vector of values. No conversion between measuring units
  is carried out (\emph{ie} \eqn{cm} in, \eqn{cm^2} out, or
  \eqn{m} in, \eqn{m^2} out)
}
\examples{
# dbh from an ideal even-aged forest
dbhList <- runif(10, min = 30, max = 40)
data.frame(dbh = dbhList, g = ttBasalArea(dbhList))
}
\author{
  Marco Bascietto \email{marco.bascietto@ibaf.cnr.it}
}

