#' @keywords internal
"_PACKAGE"

# The following block is used by usethis to automatically manage
# roxygen namespace tags. Modify with care!
## usethis namespace: start
## usethis namespace: end
NULL

#' hamONdests
#'
#' A data package which consists of destination sourced from City of Hamilton (Ontario, Canada)
#' sources, including the Hamilton [Open Data portal](https://open.hamilton.ca/) and augmented with estimated qualities such as 'capacities'. The package also includes associated spatial boundary files.
#'
#' @docType package
#' @name hamONdests-package
#' @author Antonio Paez, School of Earth, Environment and Society, McMaster University \email{paezha@@mcmaster.ca}
#' @author Anastasia Soukhov, School of Earth, Environment and Society, McMaster University \email{soukhoa@@mcmaster.ca}
#' @references \url{https://github.com/soukhova/hamONdests}
NULL


#' The elementary and secondary public schools in Hamilton for the 2010-2011 and 2015-2016 academic years.
#'
#' This object contains the elementary and secondary public schools in Hamilton in the 2010-2011 and 2015-2016 academic years.
#'
#' @format A simple feature class (sf) point object containing 177 rows and 19 variables; each row represents a school with associated geo-referenced geometry.
#' \describe{
#'   \item{SchoolID}{A unique identifier for each school.}
#'   \item{Name}{The name of the school}
#'   \item{CID2011}{The unique ID of the 2010-2011 catchment associated with the school; includes both 'public' and 'catholic' school catchments}
#'   \item{CID2016}{The unique ID of the 2015-2016 catchment associated with the school; includes both 'public' and 'catholic' schools catchments}
#'   \item{System}{The type of school system, either public ("Public") or public catholic ("Catholic")}
#'   \item{Level}{The level of school education, either elementary ("Elementary") or secondary ("Secondary") which educates children typically from the ages 3 to 14 years, and 14 years to 18 years, respectively.}
#'   \item{Year}{The academic year that corresponds with the schools location. Either "2011" (the 2010-2011 academic year), "2016" (the 2015-2016 academic year) or "2011 and 2016" (both academic years). See "Status" variable for additional information.}
#'   \item{Status}{The status of the school is relative to the 2015-2016 academic year; options are either "New" (existed in 2015-2016 only), "Removed" (existed in 2010-2011 only, not 2015-2016), "Moved" (are at different locations in 2010-2011 vs. 2015-2016), "Expanded" (building is expanded between 2010-2011 and 2015-2016 years), "NoChange" (no change between 2010-2011 and 2015-2016).}
#'   \item{ON_Enrol_2011}{The number of students who enrolled at the school for the 2010-2011 academic year.}
#'   \item{ON_Enrol_2016}{The number of students who enrolled at the school for the 2015-2016 academic year.}
#'   \item{footprint2011}{The area of the building footprint as calculated from the digitized polygon retrieved from OpenStreetMaps (~2011) }
#'   \item{footprint2016}{The area of the building footprint as calculated from the digitized polygon retrieved from OpenStreetMaps (~2016)}
#'   \item{ELEM}{Dummy variable indicating if the school is an Elementary school or not (eduactes children typically from the ages 3 to 14 years)}
#'   \item{MID}{Dummy variable indicating if the school is a Middle school or not (eduactes older elementary-aged children typically from the ages 11 to 14 years. NOTE: all ELEM are MID, but not all MID are ELEM.)}
#'   \item{HIGH}{Dummy variable indicating if the school is a Secondary school or not (eduactes children typically from the ages 14 to 18 years)}
#'   \item{urban.dist}{The as-the-crow-flies distance from the CBD (the lat-long coordinate of "King St W and James St S: (43.256684, -79.869039).}
#'   \item{OTGC2011}{The estimated on-the-ground-capacity (OTGC) of the school in the 2010-2011 academic year. This is a province-estimated value of how many student _can_ be educated at this facility; the values are not available for all schools, so was estimated using a regression model. See documentation for details.}
#'   \item{OTGC2016}{The estimated on-the-ground-capacity (OTGC) of the school in the 2015-2016 academic year. This is a province-estimated value of how many student _can_ be educated at this facility; the values are not available for all schools, so was estimated using a regression model. See documentation for details.}
#'   \item{geometry}{The point geometry.}
#'}
#' @docType data
#' @keywords schools points
#' @name Schools_2011_2016
#' @usage data(Schools_2011_2016)
#' @source "The school coordinates and catchments are provided by the Hamilton Wentworth District School Board (HWDSB) and the Hamilton Wentworth Catholic District School Board (HWCDSB) for the respective academic years (2010-2011 and 2015-2016) via author correspondence. The real enrolment numbers for the 2010-2011 and 2015-2016 academic years were retrieved from the government of Ontario open data database. The on-the-ground-capacity of schools were estimated based on the building footprints (retrieved via OpenStreetMap of the archived 2011 and 2016 satellite images), level of school (elementary, middle, secondary), and CBD distance for 'Public" and "Catholic" schools. The estimated OTGC is validated against a handful of OTGC values scrapped from School Profiles publicly available for only certain schools (~40 schools, see data-raw).
"Schools_2011_2016"

#' The catchments associated with the elementary and secondary public schools in Hamilton for the  2010-2011 and 2015-2016 academic years.
#'
#' This object contains the catchments associated with the elementary and secondary public schools in Hamilton in the 2010-2011 and 2015-2016 academic years.
#'
#' @format A simple feature class (sf) polygon object containing 305 rows and 5 variables; each row represents a unique planning region with associated geo-referenced geometry.
#' \describe{
#'   \item{CID}{The unique ID associated with the catchment.}
#'   \item{Year}{The academic year that corresponds with the schools location. Either "2011" (the 2010-2011 academic year), "2016" (the 2015-2016 academic year) or "2011 and 2016" (both academic years). See "Status" variable for additional information.}
#'   \item{Level}{The level of school education, either elementary ("Elementary") or secondary ("Secondary") which educates children typically from the ages 3 to 14 years, and 14 years to 18 years, respectively.}
#'   \item{System}{The type of school system, either public ("Public") or public catholic ("Catholic")}
#'   \item{geometry}{The sfc polygon geometry (boundaries).}
#'}
#' @docType data
#' @keywords planning catchment schools
#' @name School_Catchments_2011_2016
#' @usage data(School_Catchments_2011_2016)
#' @source "The school coordinates and catchments are provided by the Hamilton Wentworth District School Board (HWDSB) and the Hamilton Wentworth Catholic District School Board (HWCDSB) for the respective academic years (2010-2011 and 2015-2016) via author correspondence.
"School_Catchments_2011_2016"
