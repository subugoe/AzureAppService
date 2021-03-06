% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/configure.R
\name{az_configure}
\alias{az_configure}
\alias{az_configure_list}
\title{Manage Azure CLI configuration}
\usage{
az_configure(name = NULL, resource_group = NULL, ...)

az_configure_list(...)
}
\arguments{
\item{name}{Name of the web app.
(In the Azure CLI, this argument is sometimes known as \code{name}, and sometimes as \code{web}).}

\item{resource_group}{The \href{https://docs.microsoft.com/en-us/azure/azure-resource-manager/management/manage-resource-groups-portal}{Azure resource group} to which the app service should belong.}

\item{...}{
  Arguments passed on to \code{\link[=az_cli_run]{az_cli_run}}
  \describe{
    \item{\code{cmd}}{Command, required, optional, additional, extra parameters, as for \code{\link[processx:run]{processx::run()}}
\code{add} parameters are reserved for the user to pass down additional arguments to the Azure CLI.
\code{extra} parameters are reserved for internal use.}
    \item{\code{req}}{Command, required, optional, additional, extra parameters, as for \code{\link[processx:run]{processx::run()}}
\code{add} parameters are reserved for the user to pass down additional arguments to the Azure CLI.
\code{extra} parameters are reserved for internal use.}
    \item{\code{opt}}{Command, required, optional, additional, extra parameters, as for \code{\link[processx:run]{processx::run()}}
\code{add} parameters are reserved for the user to pass down additional arguments to the Azure CLI.
\code{extra} parameters are reserved for internal use.}
    \item{\code{add}}{Command, required, optional, additional, extra parameters, as for \code{\link[processx:run]{processx::run()}}
\code{add} parameters are reserved for the user to pass down additional arguments to the Azure CLI.
\code{extra} parameters are reserved for internal use.}
    \item{\code{echo_cmd}}{Whether to print the command to run to the screen.}
    \item{\code{echo}}{Whether to print the standard output and error
to the screen. Note that the order of the standard output and error
lines are not necessarily correct, as standard output is typically
buffered.}
  }}
}
\description{
Overwrites defaults for the Azure CLI to \verb{.azure/} directory (\strong{side effect}), if arguments are provided.
Errors out if a default is missing.
}
\details{
Because of a \href{https://github.com/Azure/azure-cli/issues/15014}{bug}, the Azure CLI will always include defaults at \verb{~/.azure/}.
These hidden defaults can interfere with these functions.
Make sure that you have no default \code{name} and \code{resource_group} in the global azure default config in your \code{HOME} directory.
}
\section{Functions}{
\itemize{
\item \code{az_configure_list}: List defaults
}}

