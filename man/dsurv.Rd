% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dist_surv.R
\name{dsurv}
\alias{dsurv}
\alias{psurv}
\alias{hsurv}
\alias{qsurv}
\alias{rsurv}
\title{Survival}
\usage{
dsurv(x, arm, include_cured = T)

psurv(q, arm, include_cured = T, lower.tail = T)

hsurv(x, arm, include_cured = T)

qsurv(p, arm, include_cured = T, lower.tail = T)

rsurv(n = 1, arm, include_cured = T)
}
\arguments{
\item{x, q}{vector of quantiles.}

\item{arm}{object of class arm.}

\item{include_cured}{logical; if TRUE, mixture distribution of cured
and uncured patients is considered; otherwise, only the distribution
for uncured patients is considered.}

\item{lower.tail}{logical; if TRUE, probabilities are \eqn{P(X \le x)};
otherwise, \eqn{P(X > x)}.}

\item{p}{vector of probabilities.}

\item{n}{number of observations.}
}
\value{
\code{dsurv} gives the density, \code{psurv} gives the distribution
  function, \code{hsurv} gives the hazard function, \code{qsurv} gives the
  quantile function, and \code{rsurv} generates random deviates.
}
\description{
Density, distribution function, hazard function, quantile function,
and random generation for the survival distribution.
}
\seealso{
\code{\link{create_arm}} and \code{\link{create_arm_lachin}}
  for creating an object of class 'arm'.
}
