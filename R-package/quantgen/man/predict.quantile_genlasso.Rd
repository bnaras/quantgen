% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/quantile_genlasso.R
\name{predict.quantile_genlasso}
\alias{predict.quantile_genlasso}
\title{Predict function for quantile_genlasso object}
\usage{
\method{predict}{quantile_genlasso}(
  object,
  newx,
  s = NULL,
  sort = FALSE,
  iso = FALSE,
  nonneg = FALSE,
  round = FALSE,
  ...
)
}
\arguments{
\item{object}{The \code{quantile_genlasso} object.}

\item{newx}{Matrix of new predictor variables at which predictions should
be made.}

\item{s}{Vector of integers specifying the tau and lambda values to consider
for predictions; for each \code{i} in this vector, predictions are made at
quantile level \code{tau[i]} and tuning parameter value \code{lambda[i]},
according to the \code{tau} and \code{lambda} vectors stored in the given
\code{quantile_genlasso} object \code{obj}. (Said differently, \code{s}
specifies the columns of \code{object$beta} to use for the predictions.)
Default is NULL, which means that all tau and lambda values will be
considered.}

\item{sort}{Should the returned quantile estimates be sorted? Default is
FALSE. Note: this option only makes sense if the values in the stored
\code{tau} vector are distinct, and sorted in increasing order.}

\item{iso}{Should the returned quantile estimates be passed through isotonic
regression? Default is FALSE; if TRUE, takes priority over \code{sort}.
Note: this option only makes sense if the values in the stored \code{tau}
vector are distinct, and sorted in increasing order.}

\item{nonneg}{Should the returned quantile estimates be truncated at 0?
Natural for count data. Default is FALSE.}

\item{round}{Should the returned quantile estimates be rounded? Natural for
count data. Default is FALSE.}
}
\description{
Predict the conditional quantiles at a new set of predictor variables, using
the generalized lasso coefficients at specified tau or lambda values.
}
