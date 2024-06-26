% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/BOSO_multiple_ColdStart.R
\name{BOSO.multiple.coldstart}
\alias{BOSO.multiple.coldstart}
\title{BOSO.single and associates functions}
\usage{
BOSO.multiple.coldstart(
  x,
  y,
  xval,
  yval,
  nlambda = 100,
  IC = "eBIC",
  n.IC = NULL,
  p.IC = NULL,
  lambda.min.ratio = ifelse(nrow(x) < ncol(x), 0.01, 1e-04),
  lambda = NULL,
  intercept = TRUE,
  standardize = FALSE,
  dfmin = 0,
  dfmax = NULL,
  costErrorVal = 1,
  costErrorTrain = 0,
  costVars = 0,
  Threads = 0,
  timeLimit = 1e+75,
  verbose = F,
  TH_IC = 0.001
)
}
\arguments{
\item{x}{Input matrix, of dimension 'n' x 'p'. This is the data from the 
training partition. Its recommended to be class "matrix".}

\item{y}{Response variable for the training dataset. A matrix of one column 
or a vector, with 'n' elements}

\item{xval}{Input matrix, of dimension 'n' x 'p'. This is the data from the 
validation partition. Its recommended to be class "matrix".}

\item{yval}{Response variable for the validation dataset. A matrix of one 
column or a vector, with 'n' elements.}

\item{nlambda}{The number of lambda values. Default is 100.}

\item{IC}{information criterion to be used. Default is 'eBIC'.#'}

\item{n.IC}{number of events for the information criterion.}

\item{p.IC}{number of initial variables for the  information criterion.}

\item{lambda.min.ratio}{Smallest value for lambda, as a fraction of 
lambda.max, the (data derived) entry value.}

\item{lambda}{A user supplied lambda sequence. Typical usage is to have the 
program compute its own lambda sequence based on nlambda and 
lambda.min.ratio. Supplying a value of lambda overrides this. 
WARNING: use with care}

\item{intercept}{Boolean variable to indicate if intercept should be added 
or not. Default is false.}

\item{standardize}{Boolean variable to indicate if data should be scaled 
according to mean(x) mean(y) and sd(x) or not. Default is false.}

\item{dfmin}{Minimum number of variables to be included in the problem. The 
intercept is not included in this number. Default is 0.}

\item{dfmax}{Maximum number of variables to be included in the problem. The 
intercept is not included in this number. Default is min(p,n).}

\item{costErrorVal}{Cost of error of the validation set in the objective 
function. Default is 1. WARNING: use with care, changing this value changes 
the formulation presented in the main article.}

\item{costErrorTrain}{Cost of error of the training set in the objective 
function. Default is 0. WARNING: use with care, changing this value changes 
the formulation presented in the main article.}

\item{costVars}{Cost of new variables in the objective function. Default is 0. 
WARNING: use with care, changing this value changes the formulation 
presented in the main article.}

\item{Threads}{CPLEX parameter, number of cores that IBM ILOG CPLEX is 
allowed to use. Default is 0 (automatic).}

\item{timeLimit}{CPLEX parameter, time limit per problem provided to CPLEX.
Default is 1e75 (infinite time).}

\item{verbose}{print progress. Default is FALSE.}

\item{TH_IC}{is the ratio over one that the information criterion must 
increase to be STOP. Default is 1e-3.}
}
\value{
A `BOSO` object.
}
\description{
Function to run a single block BOSO problem, generating for 
each K a different CPLEX object.
}
\details{
Compute the BOSO for use one block. This function calls ILOG IBM CPLEX with 
'cplexAPI' to solve the optimization problem
}
\author{
Luis V. Valcarcel
}
