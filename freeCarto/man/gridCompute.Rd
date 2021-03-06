% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/carroyage.R
\name{gridCompute}
\alias{gridCompute}
\title{gridCompute}
\usage{
gridCompute(carroyage, df, dfid = NULL, var)
}
\arguments{
\item{carroyage}{Carroyage object generated with the function carroyage()}

\item{df}{dataframe with numeric values}

\item{dfid}{unique id in the df}

\item{var}{statistic indicator (numeric)}
}
\value{
dataframe
}
\description{
regional data -> grid data
}
\details{
This function compute the data within the grid layer according to surface intersection
}
\examples{
data(nuts2006)
mygrid <- carroyage(nuts2.spdf,400000)
datagrid.df <- gridCompute(mygrid, nuts2.df, "pop2008",dfid=NULL)
plot(mygrid$spdf,col="#CCCCCC",border="white")
propSymbolsLayer(spdf= mygrid$spdf, df = datagrid.df, var = "pop2008",k=0.03,col="black")
}

