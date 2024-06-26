% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/kpi_groups.R
\name{kpi_grp_search}
\alias{kpi_grp_search}
\title{Search a Kolada KPI Group metadata table for group names}
\usage{
kpi_grp_search(kpi_grp_df, query)
}
\arguments{
\item{kpi_grp_df}{A Kolada KPI Group metadata table, as created by e.g.
\code{get_kpi_groups}.}

\item{query}{A search term or a vector of search terms to filter by. Case
insensitive.}
}
\value{
A Kolada KPI Group metadata table
}
\description{
Search a Kolada KPI Group metadata table. Only keep rows that
contain the search query. Searches group titles and group IDs. Note that this
function does not search for individual KPIs contained within KPI groups!
To search for KPIs within a KPI group, see examples below for an example
using \code{kpi_grp_unnest}.
}
\examples{
if (kolada_available()) {
kpi_grp_df <- get_kpi_groups()

# Which KPI groups match the keyword "ekonomi" (economy)?
kpi_grp_df \%>\% kpi_grp_search("ekonomi")

# Which KPI groups contain KPIs matching the keyword "arbete" (work/labour)?
kpi_grp_df \%>\%
  kpi_grp_unnest() \%>\%
  kpi_search("arbete") \%>\%
  dplyr::count(group_title, sort = TRUE)
}

}
