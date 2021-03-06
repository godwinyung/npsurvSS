% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/calc_maxU_and_minimaxU.R
\name{dminimaxU}
\alias{dminimaxU}
\alias{pminimaxU}
\alias{qminimaxU}
\alias{eminimaxU}
\title{Minimax observed time}
\usage{
dminimaxU(x, arm0, arm1, include_cens = T)

pminimaxU(q, arm0, arm1, include_cens = T, lower.tail = T)

qminimaxU(p, arm0, arm1, include_cens = T, margin = 0.01)

eminimaxU(arm0, arm1, include_cens = T)
}
\arguments{
\item{x, q}{vector of quantiles.}

\item{arm0}{object of class 'arm'.}

\item{arm1}{object of class 'arm'.}

\item{include_cens}{logical; if TRUE, include time-to-censoring as potential
observed time; otherwise, observed time equals time-to-event.}

\item{lower.tail}{logical; if TRUE, probabilities are \eqn{P(X \le x)};
otherwise, \eqn{P(X > x)}.}

\item{p}{vector of probabilities.}

\item{margin}{margin of accuracy.}
}
\value{
\code{dminimaxU} gives the density, \code{pminimaxU} gives the distribution
  function, \code{qminimaxU} gives the quantile function, and \code{eminimaxU}
  gives the expected value.
}
\description{
Density, distribution function, quantile function, and expected value for the
minimum of the maximum observed time over two treatment arms.
}
\details{
Given a patient in arm \eqn{X_i=j} with time-to-event \eqn{T_i} and time-to-censoring
\eqn{C_i}, \eqn{U_i=\min(T_i, C_i)} defines the patient's observed time. The
maximum observed time over patients of arm \eqn{j} is then \eqn{\max_{i:X_i=j} U_i},
and the minimax observed time over two arms is \eqn{\min_j (\max_{i:X_i=j} U_i)}.
}
\seealso{
\code{\link{create_arm}} and \code{\link{create_arm_lachin}}
  for creating an object of class 'arm'.
}
