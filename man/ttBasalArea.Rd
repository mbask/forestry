\name{ttBasalArea}
\alias{ttBasalArea}
\title{Basal area of a tree given its diameter

The function is vectorized, accepts a single value or a vector of values.
<<<<<<< HEAD
No conversion between measuring units is carried out (\emph{ie} \eqn{cm} in, \eqn{cm^2} out, or  \eqn{m} in, \eqn{m^2} out)}
=======
No conversion between measuring units is carried out (\emph{ie} \eqn{cm} in, \eqn{cm^2} out)}
>>>>>>> 5a78f09e6c677fd8a2376593f38866c78a179bef
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
  Basal area of a tree given its diameter

  The function is vectorized, accepts a single value or a
  vector of values. No conversion between measuring units
<<<<<<< HEAD
  is carried out (\emph{ie} \eqn{cm} in, \eqn{cm^2} out, or
  \eqn{m} in, \eqn{m^2} out)
=======
  is carried out (\emph{ie} \eqn{cm} in, \eqn{cm^2} out)
>>>>>>> 5a78f09e6c677fd8a2376593f38866c78a179bef
}
\examples{
# dbh from an ideal even-aged forest
dbhList <- runif(10, min = 30, max = 40)
data.frame(dbh = dbhList, g = ttBasalArea(dbhList))
}
\author{
  Marco Bascietto \email{marco.bascietto@ibaf.cnr.it}
}

