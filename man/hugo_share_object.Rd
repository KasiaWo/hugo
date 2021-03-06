% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/hugo_share_object.R
\name{hugo_share_object}
\alias{hugo_share_object}
\alias{hugo_get_object}
\title{Share and download object from github.}
\usage{
hugo_share_object(object)

hugo_get_object(user, repo_name, object_name)
}
\arguments{
\item{object}{R object which you wish to share.}

\item{user}{Github user name, to construct proper url to repository.}

\item{repo_name}{Name of github repository, also used to construct url.}

\item{object_name}{Name of the object you want to download.}
}
\value{
Please check Functions section.
}
\description{
To use both of this functions, it is required to have git installed.
Becouse of git2r library limitations, those functions won't work if either
user.name or user.email are empty in git config file. Uses .rds format to save objects.
Hugo_get_object is intended to use only with hugo_share_object - it is not general
function to download object from github, and don't try to use it as one.
}
\details{
While using hugo_share_object user is prompted and asked to insert additional parameters - github user name, password for given user, and repository name, to wich you want to add your object.
If hugo remebers previus answer, user will be prompted and asked if he wishes to use current
credentials or insert new ones.
}
\section{Functions}{
\itemize{
\item \code{hugo_share_object}: Shares given object via github, prompts user for input.

   Returns: in case of success prompts user with message, and returns string, which is
   direct call to hugo_get_object. In case of failure, prompts user with appropriate
   message and returns NULL.

\item \code{hugo_get_object}: Downloads given object from github.
Returns: in case of success prompts user with message, and returns object.
It us up to user how to handle it - wheter to assign it to variable,
or use as parameter. In case of failure, prompts user with appropriate
message and returns NULL.
}}

\examples{
\dontrun{
hugo_share_object(iris)
hugo_get_object(matrix(runif(200), ncol = 10))

object_1 <- hugo_get_object('tidyverse','readr','revdep/checks.rds')
object_2 <- hugo_get_object('hadley','r-python','github.rds')
}
}
