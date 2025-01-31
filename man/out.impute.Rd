% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/99_HELPERS.R
\name{out.impute}
\alias{out.impute}
\title{Outliers imputation}
\usage{
out.impute(tbl, rf, ub, lb, sc)
}
\arguments{
\item{tbl}{Data frame with risk factors ready for imputation.}

\item{rf}{Vector of risk factors to be imputed.}

\item{ub}{Upper bound percentiles.}

\item{lb}{Lower bound percentiles.}

\item{sc}{Numeric vector of special case values.}
}
\value{
Returns a list of three elements. The first element is a data frame with imputed values,
the second element is a vector of newly created risk factors (with imputed values) and the third one is
a data frame with information about possible imputation errors.
}
\description{
Outliers imputation
}
\examples{
if 	(interactive()) {
	imp.res <-  suppressWarnings(
			out.impute(tbl = rv$db, 		
				    rf = input$rf.out,
				    ub = upper.pct,
				    lb = lower.pct,
				    sc = sca.check.res[[1]])
			)
	}

}
