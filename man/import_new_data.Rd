% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/import_new_data.R
\name{import_new_data}
\alias{import_new_data}
\alias{importNewData}
\title{Import new data into DoOR}
\usage{
import_new_data(file.name,
  dataFormat = door_default_values("door_data_format"),
  odor_data = door_default_values("odor"),
  weightGlobNorm = door_default_values("door_global_normalization_weights"),
  responseRange = door_default_values("door_response_range"),
  receptors = door_default_values("ORs"),
  ident = door_default_values("ident"), round = 3)
}
\arguments{
\item{file.name}{character string, the name of given file that contains 
response values of one or more odorant receptors, either a .csv or .txt 
file.}

\item{dataFormat}{data frame, a data frame does not contain any response 
value but odorant information.}

\item{odor_data}{data frame, contains the odorant information.}

\item{weightGlobNorm}{data matrix, indicates whether given receptor has been 
measured by given study.}

\item{responseRange}{data frame, contains the information about response 
range of each study and how many odors have been measured in each study.}

\item{receptors}{data frame, contains the receptor and OSN names and their 
expression.}

\item{ident}{the identifier used for matching, usually the InChIKey is used.}

\item{round}{the number of digits the imported values are rounded to.}
}
\description{
Import or update new data and update
\code{door_global_normalization_weights}, \code{door_response_range},
\code{odor}, \code{ORs} and receptor data frames.
}
\details{
\code{\link{import_new_data}} is used to import new data into database. If
the data contains a new receptor or ORN, then build a new data frame for this
receptor or ORN. If the data contains a receptor that is already present in 
database, then merge the imported data into old data frame. The information 
(e.g. response range, how many receptors and odors were measured from given 
study) will be integrated into data \code{door_response_range}, \code{odor}, 
\code{ORs} and \code{door_global_normalization_weights}. If an existing study
is imported, \code{\link{remove_study}} will be run first in order to perform
an update.
}
\examples{
\dontrun{
import new data named "odorantResponses_Orx.txt" into database and update the
support data.
library(DoOR.data)
import_new_data(file.name = "odorantResponses_Orx.csv")
}

}
\author{
Shouwen Ma <\email{shouwen.ma@uni-konstanz.de}>

Daniel Münch <\email{daniel.muench@uni-konstanz.de}>
}
\keyword{data}
