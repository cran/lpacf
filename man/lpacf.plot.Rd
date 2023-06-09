\name{lpacf.plot}
\alias{lpacf.plot}
\title{
Function to produce various plots of the lpacf.
}
\description{
This function can produce plots of the lpacf at specified times and/or lags.
}
\usage{
lpacf.plot(lpacf,atTime=NULL,atLag=NULL,SaveToFile=FALSE,alpha=0.95,...)
}
\arguments{
  \item{lpacf}{An object produced by \code{lpacf}.
}
  \item{atTime}{Vector of the times of the \code{lpacf} to be plotted named according to \code{lpacf$the.x}.
}
  \item{atLag}{Vector of the lags (columns) of the \code{lpacf} to be plotted.
}
  \item{SaveToFile}{If large numbers of plots are needed then set \code{SaveToFile=TRUE} to save them to a file.  By default this will save in the current working directory with the name \code{Rplotlpacf\%03d.pdf}.
}
  \item{alpha}{alpha level for the confidence intervals, default 95\% confidence.
}
  \item{\dots}{Additional arguments can be supplied which will be passed to \code{plot}.
}
}
\details{
Produces the desired 1-d plots of the lpacf at times and lags as specified by \code{atTime} and \code{atLag}.
}
\value{
Silently returns the desired 1-d plots of the lpacf at times and lags as specified by \code{atTime} and \code{atLag}.  If \code{SaveToFile=TRUE} then these are saved to a file in the current working directory rather than displayed.

}
\author{
Rebecca Killick
}

\seealso{
\code{\link{lpacf}}
}
\examples{
# first generate a time-varying process
set.seed(879)
x=tvar2sim()

# calculate the lpacf
ans<-lpacf(x,lag.max=10,filter.number=2,family="DaubExPhase")

# then plot it at the first 10 lags at a couple of points in the data.
lpacf.plot(ans,atLag=1:10,atTime=c(150,350))
}
\keyword{ts}
\keyword{wavelet}
