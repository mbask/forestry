\name{treeBasalArea}
\alias{treeBasalArea}
\title{Basal area of a tree given its diameter

The function is vectorized, accepts a single value or a vector of values}
\usage{
  treeBasalArea(treeDbh)
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
  vector of values
}
\examples{
# dbh from an ideal even-aged forest
dbhList <- runif(10, min = 30, max = 40)
treeBasalArea(dbhList)
}
\author{
  Marco Bascietto \email{marco.bascietto@ibaf.cnr.it}
}

