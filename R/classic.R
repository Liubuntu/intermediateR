#' classic R approaches to data analysis
#' the functions here illustrate how an "old-school" R users might approach data management and analysis.
#'
#'  @details There are 2 files. They are from a microarray experiment. The first file,
#' "All-phenoData.csv" describes the 128 samples. The second file, are the normalized expressions
#'  values for 12k probesets across 128 samples. The files originally came from sheets in excel, and were
#'  from Excel using export-to-csv.
#'
#'  @param pdata_file character(1) The path to the pheno data file.
#'  @param exprs_file character(1) The path to the expression file.
#'
#'  @return A data.frame() containing samples as rows and phenotype data and expression data as columns.
#'  @export
#'
input_classic = function(pdata_file, exprs_file){
  pdata = read.csv(pdata_file, row.names=1, check.names=FALSE)
  exprs = read.csv(exprs_file, row.names=1, check.names=FALSE)
  merge(pdata, t(exprs), by=0)   ## merge using the rownames
  ## return a data.frame
}
