#' Get metadata of individual country files from geoBoundaries
#'
#' @description
#'
#' This function returns metadadata of the
#' [geoBoundaries API](https://www.geoboundaries.org/api.html).
#'
#' @return
#' A tibble.
#'
#' @source
#' geoboundaries API Service <https://www.geoboundaries.org/api.html>.
#'
#'
#' @family metadata functions
#'
#' @inheritParams get_geobn
#'
#' @export
#'
#' @seealso [get_geobn()]
#' @details
#'
#' Equivalent to `get_geobn(..., metadata = TRUE)`.
#'
#' @examplesIf httr2::is_online()
#' # Get ADM4 levels
#'
#' library(dplyr)
#'
#' get_geobn_meta(boundary_type = "ADM4") %>%
#'   glimpse()
#'
get_geobn_meta <- function(
  country = "ALL",
  release_type = c("gbOpen", "gbHumanitarian", "gbAuthoritative"),
  boundary_type = c("ALL", "ADM0", "ADM1", "ADM2", "ADM3", "ADM4")
) {
  release_type <- match.arg(release_type)
  boundary_type <- match.arg(boundary_type)

  metadata <- get_geobn(
    country = country,
    release_type = release_type,
    boundary_type = boundary_type,
    metadata = TRUE
  )

  metadata
}
