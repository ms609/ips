## This code is part of the ips package

#' @title Array Transposition for DNAbin
#' @description S3 method for \code{\link[base]{aperm}} on objects of class
#'   \code{\link[ape]{DNAbin}}. Strips the class before permuting so that
#'   \code{\link[base]{apply}} receives a plain raw matrix from the internal
#'   \code{aperm} call, matching the behaviour of \code{aperm.default} prior to
#'   R-devel revision 90136 (2026-06-12).
#' @param a A matrix of class \code{DNAbin}.
#' @param perm An integer vector giving the permutation of the dimensions.
#' @param resize Logical; passed to \code{aperm.default}.
#' @param \dots Further arguments passed to \code{aperm.default}.
#' @return A raw matrix without the \code{DNAbin} class.
#' @exportS3Method
aperm.DNAbin <- function(a, perm = NULL, resize = TRUE, ...) {
  class(a) <- NULL
  aperm(a, perm = perm, resize = resize)
}
