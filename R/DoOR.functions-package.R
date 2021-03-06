#' DoOR Functions
#' 
#' Functions package providing manipulation and application of the DoOR.
#' 
#' \tabular{ll}{ Package: \tab DoOR.functions\cr Type: \tab Package\cr Version: 
#' \tab 2.0.0\cr Date: \tab 2016-01-25\cr License: \tab GPL-3\cr LazyLoad: \tab 
#' yes\cr }
#' 
#' \bold{Type \code{help(package = DoOR.functions)} to see a complete list of 
#' datasets and functions.  Below is what you need for a quick start.}
#' 
#' First, load the DoOR packages, data and function package: \tabular{ll}{ 
#' \code{library(DoOR.functions)}: \tab \cr \code{library(DoOR.data)}: \tab \cr 
#' }
#' 
#' then, load all datasets including the precomputed response matrix: 
#' \tabular{ll}{ \code{load_door_data}: \tab Load all data into current active 
#' environment (function comes with DoOR.data) . \cr } or, load all odorant
#' reseponse data into a list: \tabular{ll}{ \code{\link{load2list}}: \tab Load
#' odorant response data only and compose them as a list.  \cr }
#' 
#' Try some visualizations (e.g. producing the plots from the paper): 
#' \tabular{ll}{ \code{\link{dplot_al_map}}: \tab response to a chemical mapped
#' onto an image of the antennal lobe.\cr \code{\link{dplot_compare_profiles}}:
#' \tab compare the results of two studies.  \cr
#' \code{\link{dplot_response_matrix}}: \tab Dot Plot of Odorant Responses
#' Across Receptors. \cr \code{\link{dplot_response_profile}}: \tab bar plot:
#' one receptor, all chemicals. \cr \code{\link{dplot_tuningCurve}}: \tab
#' pyramid diagram depicting a receptor's tuning breadth. \cr } Try some
#' queries: \tabular{ll}{ \code{\link{get_responses}}: \tab given a chemical,
#' get original responses from all studies in the database.\cr
#' \code{\link{get_normalized_responses}}: \tab given a chemical, get normalised
#' responses from all studies in the database.\cr}
#' 
#' In case you wish to create your own response model (e.g. because you want to 
#' include your own datasets): \tabular{ll}{ \code{\link{create_door_database}}:
#' \tab compute the complete response model for all receptors in the database
#' (calls \code{\link{model_response}} for all receptors). \cr
#' \code{\link{model_response}}: \tab run the DoOR algorithm, that merges all
#' measurements for one receptor. \cr }
#' 
#' Estimate odorant responses: \tabular{ll}{
#' \code{\link{estimate_missing_value}}: \tab estimate NA entries in a consensus
#' response data. \cr } Project the model response values back to tested values:
#' \tabular{ll}{ \code{\link{back_project}}: \tab project the model response
#' values back to tested values. \cr }
#' 
#' Introduce new data into DoOR and update the supported data sets: 
#' \tabular{ll}{ \code{\link{import_new_data}}: \tab import new data into DoOR, 
#' and update the weight, response range and receptor names. \cr 
#' \code{\link{update_door_database}}: \tab update response matrix by
#' calculating new consensus response data for a given receptor. \cr }
#' 
#' See the Vignettes and the help pages for more documentation.
#' 
#' @name DoOR.functions.package
#' @aliases DoOR.functions DoOR.function
#' @docType package
#' @author C. Giovanni Galizia \cr Daniel Muench \cr Martin Strauch \cr Anja 
#'   Nissler \cr Shouwen Ma \cr
#'   
#'   Maintainer: Daniel Münch <daniel.muench@@uni-konstanz.de>
#' @seealso \code{DoOR.data}
#' @references \url{http://neuro.uni-konstanz.de/DoOR}
#' @keywords package
NULL


## quiets concerns of R CMD check re: the .'s that appear in pipelines
if (getRversion() >= "2.15.1")
  utils::globalVariables(
    c(
      ".",
      "dataset",
      "door_AL_map",
      "door_data_format",
      "door_excluded_data",
      "door_global_normalization_weights",
      "door_mappings",
      "door_response_matrix",
      "door_response_matrix_non_normalized",
      "door_response_range",
      "glomerulus",
      "group",
      "n",
      "odor.dist",
      "odorant",
      "odorants",
      "odor",
      "ORs",
      "OSN",
      "receptors",
      "response",
      "sensillum",
      "value",
      "values",
      "x"
    )
  )
