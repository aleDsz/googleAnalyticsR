% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/anti_sample.R
\name{anti_sample}
\alias{anti_sample}
\title{Get a GA request with anti-sampling}
\usage{
anti_sample(anti_sample_batches, viewId, date_range, metrics, dimensions,
  dim_filters, met_filters, filtersExpression, order, segments, pivots,
  cohorts, metricFormat, histogramBuckets, sample_percentage, slow_fetch,
  rows_per_call)
}
\arguments{
\item{anti_sample_batches}{"auto" default, or set to number of days per batch. 1 = daily.}

\item{viewId}{viewId of data to get.}

\item{date_range}{character or date vector of format \code{c(start, end)} or 
for two date ranges: \code{c(start1,end1,start2,end2)}}

\item{metrics}{Metric to fetch. Supports calculated metrics.}

\item{dimensions}{Dimensions to fetch.}

\item{dim_filters}{A \link{filter_clause_ga4} wrapping \link{dim_filter}}

\item{met_filters}{A \link{filter_clause_ga4} wrapping \link{met_filter}}

\item{filtersExpression}{A v3 API style simple filter string. Not used with other filters.}

\item{order}{An \link{order_type} object}

\item{segments}{List of segments as created by \link{segment_ga4}}

\item{pivots}{Pivots of the data as created by \link{pivot_ga4}}

\item{cohorts}{Cohorts created by \link{make_cohort_group}}

\item{metricFormat}{If supplying calculated metrics, specify the metric type}

\item{histogramBuckets}{For numeric dimensions such as hour, a list of buckets of data.
See details in \link{make_ga_4_req}}

\item{sample_percentage}{if TRUE will return the field sampling percentage}

\item{slow_fetch}{For large, complicated API requests this bypasses some API hacks that may result in 500 errors.  For smaller queries, leave this as \code{FALSE} for quicker data fetching.}

\item{rows_per_call}{Set how many rows are requested by the API per call, up to a maximum of 100000.}
}
\description{
Calculates multiple API calls to avoid sampling
}
\keyword{internal}
