\name{rfTreeDensity}
\alias{rfTreeDensity}
\title{Tree density at forest level, based on a relascopic plot

Tree density is estimated as \eqn{N=\phi \cdot \sum_{i=1}^{n_\phi}{\frac{1}{g_i}}} where \eqn{\phi} is the relascopic band used during sampling, \eqn{n_\phi} is the total count of trees found to be inside of the plot measured with the \eqn{\phi} band.

The function guesses the unit of measure of tree dbhs (\emph{cm} or \emph{m}) if parameter \code{unit} is set to "\code{auto}":
\itemize{
 \item \emph{cm} 1 or more tree dbh higher than 2.4
 \item \emph{m} all tree dbhs are lower or equal to 2.4
Therefore, should trees larger than 2.4 m be measured the \code{unit} parameter should be explicitly set to either \code{cm} or \code{m}.
}}
\usage{
  rfTreeDensity(treeDbh, relascopeBand = 2, unit = "auto")
}
\arguments{
  \item{treeDbh}{a single tree diameter or vector of tree
  diameters \emph{in cm}}

  \item{relascopeBand}{the relascopic band used in the
  relascopic plot (1, 2, 4), default: 2}

  \item{unit}{a character value to indicate the unit of
  measure of \code{treeDbh}: \code{cm}, \code{m},
  \code{auto} (default value)}
}
\value{
  a single numeric value (estimate of count of trees per
  hectare), not rounded
}
\description{
  Tree density at forest level, based on a relascopic plot

  Tree density is estimated as \eqn{N=\phi \cdot
  \sum_{i=1}^{n_\phi}{\frac{1}{g_i}}} where \eqn{\phi} is
  the relascopic band used during sampling, \eqn{n_\phi} is
  the total count of trees found to be inside of the plot
  measured with the \eqn{\phi} band.

  The function guesses the unit of measure of tree dbhs
  (\emph{cm} or \emph{m}) if parameter \code{unit} is set
  to "\code{auto}": \itemize{ \item \emph{cm} 1 or more
  tree dbh higher than 2.4 \item \emph{m} all tree dbhs are
  lower or equal to 2.4 Therefore, should trees larger than
  2.4 m be measured the \code{unit} parameter should be
  explicitly set to either \code{cm} or \code{m}. }
}
\examples{
# dbh from an ideal even-aged plot
dbhList <- runif(10, min = 30, max = 40)
rfTreeDensity(dbhList)
rfTreeDensity(dbhList/100)
}
\author{
  Marco Bascietto \email{marco.bascietto@ibaf.cnr.it}
}
\seealso{
  \code{\link{ttBasalArea}}
}

