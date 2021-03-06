% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/summarize_counts.R
\name{subjectMetaData}
\alias{subjectMetaData}
\title{Collate metadata variation}
\usage{
subjectMetaData(scExp, subjectVar)
}
\arguments{
\item{scExp}{\linkS4class{SingleCellExperiment} object containing
(at minimum) gene counts and column metadata describing sample identifiers
and cell types.}

\item{subjectVar}{Metadata column name assigning biological sample
identity to aggregate within-subject feature counts.}
}
\value{
Tibble data frame of metadata variables without intrasubject
variation from single cell experiment metadata. Rows correspond to
aggregated cells (i.e. subject / biological replicate) and columns to
metadata attribute variables (e.g. genotype, treatment, cell line).
}
\description{
Identify single cell experiment metadata variables that are identical
within subject (e.g. genotype, treatment, cell line, sample preparation).
Effectively excludes metadata variables containing between cell variation.
Used as the design matrix for differential expression analysis.
}
\examples{
## Return experiment metadata sans intrasubject variation.
subjectMetaData(scExp=small_airway, subjectVar="orig.ident")

}
