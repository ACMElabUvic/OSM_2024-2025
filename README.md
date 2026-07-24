---
output:
  html_document: default
  pdf_document: default
---

# OSM_2024-2025

This repository contains data, R scripts and associated outputs, and other materials necessary for the Applied Conservation and Macro Ecology (ACME) lab's Oil Sands Monitoring project for the 2024-2025 season.

### GENERAL INFORMATION

**Project Information**\
Details for the Oil Sands Monitoring Program study design can be found [here](https://open.alberta.ca/publications/9781460151341)

Also visit the [ACME website](http://www.acmelab.ca/) more information about the OSM project and the ACME lab.

**Author Information (data):**\
*Principal Investigator Contact Information*\
Name: Jason T. Fisher, PhD\
Institution: University of Victoria\
Address: 3800 Finnerty Rd, Victoria, BC V8P 5C2\
Email: [fisherj\@uvic.ca](mailto:fisherj@uvic.ca)

**Author Information (code):**\
*Data Analysis Contact Information*\
Name: Aidan Brushett\
Institution: University of Victoria\
Address: 3800 Finnerty Rd, Victoria, BC V8P 5C2\
Email: [aidanbrushett\@uvic.ca](mailto:aidanbrushett@uvic.ca)

*and*

Name: Marissa A. Dyck\
Institution: University of Victoria\
Address: 3800 Finnerty Rd, Victoria, BC V8P 5C2\
Email: [marissadyck17\@gmail.com](mailto:marissadyck17@gmail.com)

*and*

Name: Sarah E. Daman\
Institution: University of Victoria\
Address: 3800 Finnerty Rd, Victoria, BC V8P 5C2\
Email: [sdaman\@uvic.ca](mailto:sdaman@uvic.ca)

**Date of data collection:** 2024-2025

**Geographic location of data collection:** Alberta, Canada

### DATA & FILE OVERVIEW

**File List:**

*Files in main folder*

-   [**OSM_2024-2025.Rproj**]{style="color: #7B0F17;"}; R project to run code for data cleaning and analyses.
-   [**README**]{style="color: #7B0F17;"}; this README file with extension for viewing (.html) and editing (.md)

*Files in data folder*

*/processed*\
This folder includes cleaned and reformatted data spanning all years of OSM monitoring completed to date (2021-2024), produced by the scripts within this repository. Unlike prior years, most files are no longer split by year and instead contain all sampled years in a single long-format file, distinguished by the `array_visit` variable.

-   [**OSM_deployment_2024.csv**]{style="color: #7B0F17;"}; contains cleaned camera deployment start and end dates, and camera failure details, for all sites sampled in 2024-2025.

-   [**OSM_independent_detections_2021-2024.csv**]{style="color: #7B0F17;"}; contains independent detections (30-min threshold) for all species detected on cameras from all landscape units (LUs) sampled 2021-2024.

-   [**OSM_operating_days_2021-2024.csv**]{style="color: #7B0F17;"}; contains one row per camera-day that a site was actively operating, for all LUs sampled 2021-2024. Used to calculate camera effort/operability.

-   [**OSM_response_monthly_presence_detections_2021-2024.csv**]{style="color: #7B0F17;"}; contains monthly presence/absence and detection counts for a subset of focal mammal species, for all LUs sampled 2021-2024.

-   [**OSM_response_monthly_proportional_presence_2021-2024.csv**]{style="color: #7B0F17;"}; contains proportional monthly presence/absence data (months detected vs. months not detected) for focal mammal species.

-   [**OSM_response_total_detections_per_effort_2021-2024.csv**]{style="color: #7B0F17;"}; contains total independent detections and presence for all species by site, alongside the number of active camera-days (effort) at that site.

-   [**OSM_response_weekly_presence_detections_2021-2024.csv**]{style="color: #7B0F17;"}; contains weekly presence/absence and detection counts for a subset of focal mammal species, for all LUs sampled 2021-2024.

-   [**OSM_response_weekly_proportional_presence_2021-2024.csv**]{style="color: #7B0F17;"}; contains proportional weekly presence/absence data (weeks detected vs. weeks not detected) for focal mammal species.

-   [**OSM_site_coordinates_2021-2024.csv**]{style="color: #7B0F17;"}; contains cleaned site coordinates (lat/long and UTM 12N), deployment start and end dates, and camera failure details for all camera sites and array-visits sampled 2021-2024.

-   [**OSM_site_covariates_2021-2024.csv**]{style="color: #7B0F17;"}; contains cleaned and grouped landscape (HFI, land cover), climate (snowpack, winter temperature), and NDVI covariates at multiple buffer distances for all sites and array-visits sampled 2021-2024.

-   [**OSM_timelapse_2021-2024.csv**]{style="color: #7B0F17;"}; contains cleaned and error-checked image data from program Timelapse for all species and LUs sampled 2021-2024 (not formatted into independent detections).

-   [**OSM_HFI2021_site_covariates.csv**]{style="color: #7B0F17;"}, **OSM_HFI2022_site_covariates.csv**, **OSM_HFI2023_site_covariates.csv**; contain raw Human Footprint Inventory (HFI) proportional cover for each individual HFI feature class, extracted at multiple buffer distances around each site.

-   [**OSM_SBFI2020_site_covariates.csv**]{style="color: #7B0F17;"}; contains raw Landcover, Species and Age Forest Inventory (SBFI) land cover, forest age, tree species composition, and historical fire/harvest proportional cover, etc. extracted at multiple buffer distances around each site.

-   [**OSM_MODISNDVI_site_covariates.csv**]{style="color: #7B0F17;"}; contains raw MODIS NDVI (vegetation greenness index) values extracted at each site.

-   **OSM_DAYMET_annual_site_covariates.csv**; contains extracted and processed DAYMET climate and weather covariates (e.g., temperature, snow water equivalent) for the sampling year and three years prior.

-   **OSM_ABWILDFIRE_annual_site_covariates.csv**; contains extracted historical wildfire perimeter data from the Alberta Wildfire Perimeters (1931-2025) shapefile.

*/raw*\
This folder includes raw data for the current year (2024-2025), and for previous years (2021-2023) carried forward for use in the merged processed files above.

-   **landscape_unit_land_use_classifications.csv**; contains land-use type classifications (reference, mine, in situ, pre-in situ, low development) for each Landscape Unit in the OSM monitoring program.
-   [**OSM_2024_timelapse_ddb_files.Rdata**]{style="color: #7B0F17;"}; contains a vector of all informative .ddb files in the ACME Netdrive (private) containing the raw image data from image tagging for 2024-2025. The source .ddb files are not publicly available.
-   **OSM_deployment_2021.csv**, **OSM_deployment_2022.csv**, **OSM_deployment_2023.csv**, [**OSM_deployment_2024.csv**]{style="color: #7B0F17;"}; contain raw deployment start and end dates for all camera sites sampled in the respective year, including information about camera failures (early ends, datetime malfunctions).
-   **OSM_Deployment_Site_Data_2021.csv**, **OSM_Deployment_Site_Data_2022.csv**, **OSM_Deployment_Site_Data_2023.csv**, [**OSM_Deployment_Site_Data_2024.csv**]{style="color: #7B0F17;"}; contain raw data pertaining to the location, gps coordinates, date, time, and description of the sites where cameras were deployed for the respective year.
-   **OSM_timelapse_2021.csv**, **OSM_timelapse_2022.csv**, **OSM_timelapse_2023.csv**, **OSM_timelapse_2024.csv**; contain raw image data from program Timelapse for all species and LUs sampled in the respective year (not formatted into independent detections). Metadata for these files is described in the */processed* section for OSM_timelapse_2021-2024.csv.

*Files in figures folder*

This folder contains various plots generated in the scripts of this repository for the purposes of data visualization.

-   **OSM_operability_2024-2025.jpeg / .png**; plot depicting camera operability (active camera-days) across all sites monitored in 2024-2025.
-   **OSM_operability_allyears.jpeg / .png**; plot depicting camera operability across all sites monitored 2021-2024.
-   **total_detections_2024-2025.jpeg / .png**; plot depicting the total number of independent detections of each species across all camera sites monitored in 2024-2025.
-   **total_detections_per_array.jpeg / .png**; plot depicting total independent detections of each species broken down by array.
-   **naiveoccupancy_per_array.jpeg / .png**; plot depicting naive occupancy of each species broken down by array.
-   **wolverine_naiveoccupancy_per_array.jpeg**; plot depicting naive occupancy of wolverine specifically, broken down by array.
-   [**OSM_data_exploration_map_2026-02-10.html**]{style="color: #7B0F17;"}; interactive leaflet map for exploring site locations and associated landscape covariates, generated by *4_leaflet_map.Rmd*.

*/arrays*\
This sub-folder contains figures for each Landscape Unit's total independent detections (*[array]\_[year]\_independent_detections.jpeg/.png*) and naive occupancy (*[array]\_[year]\_naiveoccupancy.jpeg/.png*) by species. It also contains repeat-sample comparison figures for arrays LU2 and LU3, which were sampled in both 2021 and 2024 (*LU2/LU3_detections_2021_2024*, *LU2/LU3_detections_adjusted_2021_2024*, *LU2/LU3_naiveoccupancy_2021_2024*). Individual plots are not listed here.

*/covariates*\
This sub-folder contains histograms of key landscape covariates (cumulative footprint index, OSM industrial features, pipelines, roads, seismic lines, timber harvest, and well pads) summarized across all arrays. Individual plots are not listed here.

*Files in scripts folder*

This folder contains the various scripts needed for data formatting, visualization, and analysis. The raw data to re-run the covariate extraction scripts exceeds GitHub storage limits, but can be downloaded from their respective sources.

-   [**00_quick_error_check_for_taggers.Rmd**]{style="color: #7B0F17;"}; .rmd file, a "quick-run" version of *0_ACME_clean_timelapse_script* meant for image taggers to quickly flag and correct errors as they tag, without knitting the full workbook.
-   [**0_ACME_clean_timelapse_script_2026-02-09.Rmd**]{style="color: #7B0F17;"}; .rmd file and knitted .html file that will gather all of the individual imagery folders from the Netdrive, clean and append them, flag errors for manual correction, then export a clean dataset to this repository *and* a location on the Netdrive. Also cleans the deployment data from the Netdrive and exports noteworthy wildlife photos to the Netdrive.
-   **1_process_detections_and_deployments.Rmd**; .rmd file and knitted .html file that imports and cleans camera deployment and site coordinate data across all years, calculates camera operability, and processes independent detections and the various monthly/weekly response variables used in models.
-   **2a_extract_site_sbfi.Rmd**; extracts Species and Age Forest Inventory (SBFI) land cover, forest age, tree species, historical fire/harvest, etc. covariates at multiple buffer distances around each site.
-   **2b_extract_site_ndvi.Rmd**; extracts MODIS NDVI values at each site.
-   **2c_extract_site_daymet.Rmd**; batch-extracts daily surface weather and climate data (snow water equivalent, min/max temperature) from the DAYMET single-pixel extraction tool for each site and summarizes it into annual winter severity metrics.
-   **2d_extract_site_wildfire.Rmd**; extracts historical wildfire perimeter data from the Alberta Wildfire Perimeters (1931-2025) shapefile at multiple buffer distances around each site.
-   **2e_extract_site_hfi.Rmd**; extracts ABMI Human Footprint Inventory (HFI) covariates at multiple buffer distances around each site.
-   **2f_format_group_site_covariates.Rmd**; cleans, groups (following ABMI convention), and merges all of the above covariate sources (HFI, SBFI, NDVI, Daymet climate, wildfire) into the final *OSM_site_covariates_2021-2024.csv* file.
-   **3_create_FYE_figures.Rmd**; .rmd file and knitted .html file that creates summary plots of camera operability, total independent detections, and naive occupancy of all boreal species, organized by array. Used for the Fiscal Year End OSM report.
-   **4_leaflet_map.Rmd**; .rmd file, creates the interactive leaflet map (*OSM_data_exploration_map*) used to explore site locations and covariates.

*Files in LU2_LU3_request_for_Jake folder*

This folder contains a one-off deliverable summarizing repeat-sampled arrays LU2 and LU3 (sampled in both 2021-2022 and 2024-2025), requested externally.

-   **5_create_LU2_LU3_repeat_sample_figures.Rmd**; .rmd file, modified from *3_create_FYE_figures.Rmd*, that creates paired detection/occupancy figures and summary spreadsheets comparing LU2 and LU3 between their two sample years.
-   **LU2/LU3_detections_2021_2024.jpeg**, **LU2/LU3_detections_adjusted_2021_2024.jpeg**, **LU2/LU3_naiveoccupancy_2021_2024.jpeg**; paired comparison figures for each array (duplicated in *figures/arrays*).
-   **LU2_paired_detections_wide_summary.xlsx**, **LU3_paired_detections_wide_summary.xlsx**, **paired_detections_wide_summary.xlsx**, **paired_detections_long_summary.xlsx**; spreadsheets summarizing detections for the paired sample years in wide and long format.

## RAW DATA

### DATA-SPECIFIC INFORMATION FOR: [[OSM_2024_timelapse_ddb_files.Rdata]{style="color: #7B0F17;"}]

-   **Number of variables/columns:** 1
-   **Number of observations/rows:** 171

**Variable List:**

-   [**OSM_2024_timelapse_ddb_files**]{style="color: #2274A5;"}, a vector list of the location of source image tagging data on the Netdrive. Specifies full file paths to the .ddb files on the Netdrive.

### DATA-SPECIFIC INFORMATION FOR: [[OSM_deployment_2024.csv]{style="color: #7B0F17;"}]

-   **Number of variables/columns:** 6
-   **Number of observations/rows:** 170
-   *Note: all deployment date files from previous years follow a similar format (the `deployment_id` column was added in 2024-2025 to disambiguate sites that were redeployed mid-season).*

**Variable List:**

-   [**site**]{style="color: #2274A5;"}, factor where the first element abbreviation describes the landscape unit and the second element describes the camera site.

-   [**array**]{style="color: #2274A5;"}, factor describing the landscape unit of a camera (e.g. LU2, LU3, LU4, LU8, LU9).

-   [**start_date**]{style="color: #2274A5;"}, date indicating when the camera was deployed.

-   [**end_date**]{style="color: #2274A5;"}, date indicating when the camera was retrieved OR STOPPED WORKING, whichever comes first.

-   [**deployment_id**]{style="color: #2274A5;"}, factor identifying which deployment period a record belongs to at a given site (e.g. `D1`), for sites that were serviced/redeployed more than once during the season. This column is not used for most applications.

-   [**camera_failure_details**]{style="color: #2274A5;"}, character describing any issues with the camera during deployment that caused it to stop operating before the retrieval date. This may include cameras stopping recording early, or incorrect date and time records.

### DATA-SPECIFIC INFORMATION FOR: [[OSM_Deployment_Site_Data_2024.csv]{style="color: #7B0F17;"}]

-   **Number of variables/columns:** 22
-   **Number of observations/rows:** 170 (one per camera site)
-   *Note: all deployment site data files from previous years follow a similar format; 2024-2025 added a `Photos taken` column.*

**Variable List:**

-   [**Array**]{style="color: #2274A5;"}, factor describing the landscape unit of a camera.

-   [**Deploy Date**]{style="color: #2274A5;"}, date indicating when the camera was deployed.

-   [**Deploy Time**]{style="color: #2274A5;"}, time (in 24hrs) indicating when the camera was deployed.

-   [**Crew**]{style="color: #2274A5;"}, factor with the initials of the crew who deployed the camera.

-   [**Grid Cell \#**]{style="color: #2274A5;"}, factor identifying the sampling grid cell the camera was deployed in.

-   [**Site**]{style="color: #2274A5;"}, factor where the first element abbreviation describes the landscape unit and the second element describes the camera site.

-   [**Camera Unit \#**]{style="color: #2274A5;"}, a unique character identifier for the camera unit that was deployed.

-   [**SD Card \#**]{style="color: #2274A5;"}, a unique character identifier for the SD card that was deployed with the camera unit.

-   [**Lat**]{style="color: #2274A5;"}, numeric latitudinal geographic coordinates for the camera location.

-   [**Long**]{style="color: #2274A5;"}, numeric longitudinal geographic coordinates for the camera location.

-   [**GPS Label**]{style="color: #2274A5;"}, factor identifying the GPS waypoint associated with the camera site.

-   [**Ecosite**]{style="color: #2274A5;"}, factor describing the ecosite classification at the camera location.

-   [**Camera Site Description**]{style="color: #2274A5;"}, brief description characterizing the habitat of the camera site, completed by the technicians who deployed the camera.

-   [**Topography**]{style="color: #2274A5;"}, factor describing the topography of the camera site (e.g. Flat, Slope, Ridge).

-   [**Grade (%)**]{style="color: #2274A5;"}, numeric measurement of the slope (incline/decline) of the camera site.

-   [**Elevation (m)**]{style="color: #2274A5;"}, numeric measurement of the elevation in meters of the camera site.

-   [**Distance to Trail (m)**]{style="color: #2274A5;"}, numeric measurement of the distance to the nearest trail in meters.

-   [**Camera Direction**]{style="color: #2274A5;"}, factor indicating the cardinal direction the camera was pointed.

-   [**Trail Use Rating**]{style="color: #2274A5;"}, factor indicating the trail use of the animal trail the camera was deployed near.

-   [**Distance to Lure**]{style="color: #2274A5;"}, numeric measurement of the distance from the camera to the lure in meters.

-   [**Comments and Access Notes**]{style="color: #2274A5;"}, character with notes for the field crew.

-   [**Photos taken**]{style="color: #2274A5;"}, numeric count of photos recorded on the camera at time of retrieval. New for 2024-2025.

## PROCESSED DATA

### DATA-SPECIFIC INFORMATION FOR: [[OSM_HFI2021_site_covariates.csv]{style="color: #7B0F17;"}] and [[OSM_HFI2022_site_covariates.csv]{style="color: #7B0F17;"}] and [[OSM_HFI2023_site_covariates.csv]{style="color: #7B0F17;"}]

*Information on exact methods for data extraction and more specific variable descriptions can be found on the [ABMI human footprints wall to wall data download website](https://abmi.ca/home/data-analytics/da-top/da-product-overview/Human-Footprint-Products/HF-inventory.html)* **OR** *in the relevant_literature folder of the previous year's repository (HFI_2021_v1_0_Metadata_Final.pdf)*.

-   **Number of variables/columns:** 120 / 129 / 153
-   **Number of observations/rows:** 2051 / 4031 / 9595 (one row per site x buffer distance)

**Variable List:**

-   [**array**]{style="color: #2274A5;"}, [**site**]{style="color: #2274A5;"}, [**buffer_dist**]{style="color: #2274A5;"}, identify the array, site, and buffer radius (m) the row's HFI values were calculated over.

-   All remaining columns are individual raw HFI feature classes (e.g. `ROAD-PAVED-1L`, `WELL-GAS`, `HARVEST-AREA-2015`), each a numeric proportion of that feature class' cover within the buffer. These are cleaned, grouped, and renamed into the final covariate set in *OSM_site_covariates_2021-2024.csv* (see below).

### DATA-SPECIFIC INFORMATION FOR: [[OSM_SBFI2020_site_covariates.csv]{style="color: #7B0F17;"}]

-   **Number of variables/columns:** 111
-   **Number of observations/rows:** 15678 (one row per site x buffer distance)

**Variable List:**

-   [**array**]{style="color: #2274A5;"}, [**site**]{style="color: #2274A5;"}, [**buffer_dist**]{style="color: #2274A5;"}, [**long**]{style="color: #2274A5;"}, [**lat**]{style="color: #2274A5;"}, identify the array, site, buffer radius (m), and coordinates the row's SBFI values were calculated over.

-   **AGE_0_10 - AGE_GT_150**, numeric proportion of forest stand age classes (10-year bins) within the buffer.

-   **LC_WATER - LC_MIXEDWOOD**, numeric proportion of land cover classes (e.g. water, wetland, coniferous, broadleaf, mixedwood) within the buffer.

-   **PINU.BAN_PCT_OF_TREED - BETU.PAP_PCT_OF_TREED**, numeric proportion of tree species (e.g. jack pine, black spruce, trembling aspen) as a percent of treed area within the buffer.

-   **FIRE_PCT_1985 - FIRE_PCT_2020**, numeric proportion of area burned within the buffer, by fire year.

-   **HARVEST_PCT_1985 - HARVEST_PCT_2020**, numeric proportion of area harvested within the buffer, by harvest year.

### DATA-SPECIFIC INFORMATION FOR: [[OSM_MODISNDVI_site_covariates.csv]{style="color: #7B0F17;"}]

-   **Number of variables/columns:** 5
-   **Number of observations/rows:** 15678

**Variable List:**

-   [**array**]{style="color: #2274A5;"}, [**site**]{style="color: #2274A5;"}, [**array_visit**]{style="color: #2274A5;"}, factors identifying the landscape unit, camera site, and array-visit (e.g. `LU2_2021`).
-   [**buffer_dist**]{style="color: #2274A5;"}, numeric buffer radius (m) the NDVI value was extracted over.
-   [**ndvi**]{style="color: #2274A5;"}, numeric MODIS Normalized Difference Vegetation Index value (vegetation greenness/productivity) at the site.

### DATA-SPECIFIC INFORMATION FOR: [[OSM_DAYMET_annual_site_covariates.csv]{style="color: #7B0F17;"}]

-   **Number of variables/columns:** 39
-   **Number of observations/rows:** 603

**Variable List:**

-   [**array**]{style="color: #2274A5;"}, [**site**]{style="color: #2274A5;"}, [**array_visit**]{style="color: #2274A5;"}, factors identifying the landscape unit, camera site, and array-visit (e.g. `LU2_2021`).
-   **Winter climate metrics** (suffixed `_year_n`, `_year_n-1`, `_year_n-2`, `_year_n-3`, referring to the sample year and each of the three preceding years), derived from DAYMET daily surface weather data over the core winter period:
    -   [**first_snow_day**]{style="color: #2274A5;"}, [**last_snow_day**]{style="color: #2274A5;"}, day of year of the first/last day with measurable snow water equivalent.
    -   [**mean_swe**]{style="color: #2274A5;"}, [**peak_swe**]{style="color: #2274A5;"}, mean and maximum snow water equivalent (kg/m2) recorded over winter.
    -   [**snow_cover_days**]{style="color: #2274A5;"}, count of days with measurable snow water equivalent.
    -   [**mean_winter_temp**]{style="color: #2274A5;"}, mean of the daily average (max + min / 2) temperature (°C) over winter.
    -   [**extreme_cold_days**]{style="color: #2274A5;"}, count of days with a minimum temperature below -20°C.
    -   [**cold_degree_days**]{style="color: #2274A5;"}, cumulative sum of minimum temperatures below 0°C (severity of cold exposure).
    -   [**freeze_thaw_events**]{style="color: #2274A5;"}, count of days with a max temp above 0°C and min temp below 0°C while snow was present.

### DATA-SPECIFIC INFORMATION FOR: [[OSM_ABWILDFIRE_annual_site_covariates.csv]{style="color: #7B0F17;"}]

-   **Number of variables/columns:** 105
-   **Number of observations/rows:** 15678

**Variable List:**

-   [**array**]{style="color: #2274A5;"}, [**site**]{style="color: #2274A5;"}, [**array_visit**]{style="color: #2274A5;"}, factors identifying the landscape unit, camera site, and array-visit (e.g. `LU2_2021`).
-   [**buffer_dist**]{style="color: #2274A5;"}, numeric buffer radius (m) the NDVI value was extracted over.
-   **Fire perimeter metrics**, numeric, as a percent of burned area within the buffer. All columns follow the convention: `FIRE_CLASS#_YEAR`, where \# refers to the burn class (1-5, or 9 for unknown) and YEAR refers to the year of the fire ranging from 1931 to 2025.

### DATA-SPECIFIC INFORMATION FOR: [[OSM_site_covariates_2021-2024.csv]{style="color: #7B0F17;"}]

This csv contains the combined and grouped landscape, climate, and vegetation covariates from *OSM_HFI2021/2022/2023_site_covariates.csv*, *OSM_SBFI2020_site_covariates.csv*, *OSM_MODISNDVI_site_covariates.csv*, *OSM_DAYMET_annual_site_covariates.csv,* and *OSM_ABWILDFIRE_site_covariates.csv*. HFI features were grouped following the standards established by ABMI to simplify the number of potential variables and ensure enough data to use them in a modeling framework, and climate/fire/harvest variables have been standardized based on survey year.

-   **Number of variables/columns:** 100
-   **Number of observations/rows:** 15678 (one row per site x array_visit x buffer distance)

**Variable List:**

-   [**array**]{style="color: #2274A5;"}, [**site**]{style="color: #2274A5;"}, [**array_year**]{style="color: #2274A5;"}, [**array_visit**]{style="color: #2274A5;"}, identify the landscape unit, camera site, sample year, and array-visit (e.g. `LU2_2021`) the row corresponds to.

-   [**lat**]{style="color: #2274A5;"}, [**long**]{style="color: #2274A5;"}, [**easting_12n**]{style="color: #2274A5;"}, [**northing_12n**]{style="color: #2274A5;"}, geographic coordinates of the camera site in WGS84 and NAD83 UTM Zone 12N.

-   [**start_date**]{style="color: #2274A5;"}, [**end_date**]{style="color: #2274A5;"}, [**camera_failure_details**]{style="color: #2274A5;"}, [**deployment_id**]{style="color: #2274A5;"}, deployment details for the camera at that site/visit.

-   [**buffer_dist**]{style="color: #2274A5;"}, numeric buffer radius in meters (ranging 50 - 5000) around the camera over which the proportion of associated covariates were calculated.

-   **Land cover** (`lc_broadleaf`, `lc_coniferous`, `lc_herbs`, `lc_mixedwood`, `lc_shrubs`, `lc_water`, `lc_wetland`, `lc_wetland_treed`), numeric proportion of each land cover class within the buffer.

-   **Tree species composition** (`pct_betu_pap`, `pct_lari_lar`, `pct_pice_gla`, `pct_pice_mar`, `pct_pinu_ban`, `pct_popu_tre`), numeric percent of treed area within the buffer made up of each species (paper birch, tamarack, white spruce, black spruce, jack pine, trembling aspen).

-   [**cfi**]{style="color: #2274A5;"}, cumulative footprint index: the summed proportion of `osm_industrial`, `wells_total`, `seismic_total`, `pipe_trans`, `trails`, `roads`, and `railways` within the buffer (excludes vegetated edges and recent harvest).

-   [**cfi_with_vegedges**]{style="color: #2274A5;"}, `cfi` plus `veg_edges`.

-   [**cfi_with_harvest**]{style="color: #2274A5;"}, `cfi_with_vegedges` plus `harvest_0_15` (harvest within the last 15 years).

-   [**osm_industrial**]{style="color: #2274A5;"}, numeric proportion of industrial clearings within the buffer, summing borrowpits, other clearings, industrial facilities, and mine features.

-   [**pipe_trans**]{style="color: #2274A5;"}, numeric proportion of pipelines and transmission line corridors within the buffer.

-   [**railways**]{style="color: #2274A5;"}, numeric proportion of railway corridors within the buffer.

-   [**roads**]{style="color: #2274A5;"}, numeric proportion of roads (all classes) within the buffer.

-   [**seismic_lines_conventional**]{style="color: #2274A5;"}, numeric proportion of conventional (wide) seismic lines within the buffer.

-   [**seismic_lines_3D**]{style="color: #2274A5;"}, numeric proportion of 3D/low-impact (narrow) seismic lines within the buffer.

-   [**seismic_total**]{style="color: #2274A5;"}, sum of `seismic_lines_conventional` and `seismic_lines_3D`.

-   [**trails**]{style="color: #2274A5;"}, numeric proportion of trails and truck-trails within the buffer.

-   [**veg_edges**]{style="color: #2274A5;"}, numeric proportion of vegetated edges (alongside roads, railways, and other industrial features) within the buffer.

-   [**wells_active**]{style="color: #2274A5;"}, [**wells_inactive**]{style="color: #2274A5;"}, [**wells_total**]{style="color: #2274A5;"}, numeric proportion of active, abandoned, and all well pads within the buffer.

-   [**harvest_0_10**]{style="color: #2274A5;"}, [**harvest_10_20**]{style="color: #2274A5;"}, [**harvest_20_30**]{style="color: #2274A5;"}, [**harvest_30_40**]{style="color: #2274A5;"}, numeric proportion of area harvested within the buffer in each decade preceding the sample year.

-   [**harvest_0_15**]{style="color: #2274A5;"}, [**harvest_10_25**]{style="color: #2274A5;"}, numeric proportion of area harvested 0-15 and 10-25 years prior to the sample year (regenerating/establishment stages).

-   [**harvest_gt_15**]{style="color: #2274A5;"}, [**harvest_gt_25**]{style="color: #2274A5;"}, [**harvest_gt_40**]{style="color: #2274A5;"}, [**harvest_total**]{style="color: #2274A5;"}, numeric proportion of area harvested more than 15/25/40 years prior to the sample year, and total harvest ever recorded, respectively.

-   [**fire_0_10**]{style="color: #2274A5;"}, [**fire_10_20**]{style="color: #2274A5;"}, [**fire_20_30**]{style="color: #2274A5;"}, [**fire_30_40**]{style="color: #2274A5;"}, numeric proportion of area burned within the buffer in each decade preceding the sample year.

-   [**fire_0_15**]{style="color: #2274A5;"}, [**fire_10_25**]{style="color: #2274A5;"}, numeric proportion of area burned 0-15 and 10-25 years prior to the sample year.

-   [**fire_gt_15**]{style="color: #2274A5;"}, [**fire_gt_25**]{style="color: #2274A5;"}, [**fire_gt_40**]{style="color: #2274A5;"}, [**fire_total**]{style="color: #2274A5;"}, numeric proportion of area burned more than 15/25/40 years prior to the sample year, and total burned area ever recorded, respectively.

-   [**ndvi**]{style="color: #2274A5;"}, numeric MODIS Normalized Difference Vegetation Index value at the site.

-   **Winter climate metrics** (suffixed `_year_n`, `_year_n-1`, `_year_n-2`, `_year_n-3`, referring to the sample year and each of the three preceding years), derived from DAYMET daily surface weather data over the core winter period:

    -   [**first_snow_day**]{style="color: #2274A5;"}, [**last_snow_day**]{style="color: #2274A5;"}, day of year of the first/last day with measurable snow water equivalent.
    -   [**mean_swe**]{style="color: #2274A5;"}, [**peak_swe**]{style="color: #2274A5;"}, mean and maximum snow water equivalent (kg/m2) recorded over winter.
    -   [**snow_cover_days**]{style="color: #2274A5;"}, count of days with measurable snow water equivalent.
    -   [**mean_winter_temp**]{style="color: #2274A5;"}, mean of the daily average (max + min / 2) temperature (°C) over winter.
    -   [**extreme_cold_days**]{style="color: #2274A5;"}, count of days with a minimum temperature below -20°C.
    -   [**cold_degree_days**]{style="color: #2274A5;"}, cumulative sum of minimum temperatures below 0°C (severity of cold exposure).
    -   [**freeze_thaw_events**]{style="color: #2274A5;"}, count of days with a max temp above 0°C and min temp below 0°C while snow was present.

### DATA-SPECIFIC INFORMATION FOR: [[OSM_site_coordinates_2021-2024.csv]{style="color: #7B0F17;"}]

-   **Number of variables/columns:** 11
-   **Number of observations/rows:** 603 (one per site x array-visit)

**Variable List:**

-   [**array**]{style="color: #2274A5;"}, factor describing the landscape unit of a camera (e.g. LU1, LU2, LU3, LU4, LU8, LU9, LU13-LU16, LU21, LU22).

-   [**site**]{style="color: #2274A5;"}, factor where the first element abbreviation describes the landscape unit and the second element describes the camera site.

-   [**long**]{style="color: #2274A5;"}, the longitude of the camera site in WGS84 decimal degrees.

-   [**lat**]{style="color: #2274A5;"}, the latitude of the camera site in WGS84 decimal degrees.

-   [**easting_12n**]{style="color: #2274A5;"}, the easting of the camera site in NAD83 UTM Zone 12N.

-   [**northing_12n**]{style="color: #2274A5;"}, the northing of the camera site in NAD83 UTM Zone 12N.

-   [**start_date**]{style="color: #2274A5;"}, date indicating when the camera was deployed.

-   [**end_date**]{style="color: #2274A5;"}, date indicating when the camera was retrieved.

-   [**camera_failure_details**]{style="color: #2274A5;"}, character describing any issues with the camera during deployment.

-   [**deployment_id**]{style="color: #2274A5;"}, factor identifying the deployment bout at a given site, for sites redeployed mid-season.

-   [**array_visit**]{style="color: #2274A5;"}, factor combining the array and sample year (e.g. `LU2_2021`), uniquely identifying a single sampling visit to an array.

### DATA-SPECIFIC INFORMATION FOR: [[OSM_deployment_2024.csv (processed)]{style="color: #7B0F17;"}]

See the equivalent entry for this file under RAW DATA above; the processed version follows an identical format and column list.

### DATA-SPECIFIC INFORMATION FOR: [[OSM_independent_detections_2021-2024.csv]{style="color: #7B0F17;"}]

-   **Number of variables:** 8
-   **Number of cases/rows:** 46,058
-   *Note: each row corresponds to a new independent detection (30-min threshold).*

**Variable List:**

-   [**array**]{style="color: #2274A5;"}, factor describing the landscape unit (e.g. LU1, LU2, LU3, LU4, LU8, LU9, LU13-LU16, LU21, LU22).
-   [**array_visit**]{style="color: #2274A5;"}, factor combining the array and sample year (e.g. `LU1_2022`).
-   [**species**]{style="color: #2274A5;"}, species (or non-target class such as human, hiker, staff) present in the independent event.
-   [**site**]{style="color: #2274A5;"}, factor where the first element abbreviation describes the landscape unit and the second element describes the camera site.
-   [**event_id**]{style="color: #2274A5;"}, numeric identifier for the independent detection event.
-   [**year**]{style="color: #2274A5;"}, year in which the independent event was captured.
-   [**month**]{style="color: #2274A5;"}, month in which the independent event was captured (1 to 12).
-   [**datetime**]{style="color: #2274A5;"}, timestamp of the earliest image in the event, format: YYYY-MM-DDTHH:MM:SSZ.

### DATA-SPECIFIC INFORMATION FOR: [[OSM_operating_days_2021-2024.csv]{style="color: #7B0F17;"}]

-   **Number of variables:** 6
-   **Number of cases/rows:** 186,791
-   *Note: each row corresponds to a single active camera-day at a site.*

**Variable List:**

-   [**array**]{style="color: #2274A5;"}, factor describing the landscape unit.
-   [**array_visit**]{style="color: #2274A5;"}, factor combining the array and sample year.
-   [**site**]{style="color: #2274A5;"}, factor where the first element abbreviation describes the landscape unit and the second element describes the camera site.
-   [**date**]{style="color: #2274A5;"}, calendar date the camera was actively operating.
-   [**year**]{style="color: #2274A5;"}, year of the operating day.
-   [**month**]{style="color: #2274A5;"}, month of the operating day (1 to 12).

### DATA-SPECIFIC INFORMATION FOR: [[OSM_response_total_detections_per_effort_2021-2024.csv]{style="color: #7B0F17;"}]

-   **Number of variables:** 7
-   **Number of cases/rows:** 25,380

**Variable List:**

-   [**array**]{style="color: #2274A5;"}, [**array_visit**]{style="color: #2274A5;"}, [**site**]{style="color: #2274A5;"}, identify the landscape unit, array-visit, and camera site.
-   [**camera_days**]{style="color: #2274A5;"}, numeric count of active camera-days (effort) at the site during the array-visit.
-   [**species**]{style="color: #2274A5;"}, species detected (or possible to detect) at the site.
-   [**detections**]{style="color: #2274A5;"}, numeric total independent detections of the species at the site.
-   [**presence**]{style="color: #2274A5;"}, binary (0/1) indicating whether the species was ever detected at the site.

### DATA-SPECIFIC INFORMATION FOR: [[OSM_response_monthly_presence_detections_2021-2024.csv]{style="color: #7B0F17;"}] and [[OSM_response_weekly_presence_detections_2021-2024.csv]{style="color: #7B0F17;"}]

These files contain the same information at two temporal resolutions (monthly and weekly), for a subset of **focal mammal species of interest**.

-   **Number of variables/columns:** 8 (monthly) / 9 (weekly)
-   **Number of observations/rows:** 80,392 (monthly) / 347,204 (weekly)

**Variable List:**

-   [**array**]{style="color: #2274A5;"}, [**array_visit**]{style="color: #2274A5;"}, [**site**]{style="color: #2274A5;"}, identify the landscape unit, array-visit, and camera site.
-   [**month**]{style="color: #2274A5;"} / [**week**]{style="color: #2274A5;"}, the month (1-12) or ISO week (as a date) the row corresponds to.
-   [**year**]{style="color: #2274A5;"}, the calendar year of the month/week.
-   [**species**]{style="color: #2274A5;"}, the focal species.
-   [**presence**]{style="color: #2274A5;"}, binary (0/1) indicating detection of the species at the site during that month/week.
-   [**detections**]{style="color: #2274A5;"}, numeric count of independent detections of the species at the site during that month/week.

### DATA-SPECIFIC INFORMATION FOR: [[OSM_response_monthly_proportional_presence_2021-2024.csv]{style="color: #7B0F17;"}] and [[OSM_response_weekly_proportional_presence_2021-2024.csv]{style="color: #7B0F17;"}]

These files contain proportional monthly/weekly detection data for **focal species of interest** from all sites and array-visits during 2021-2024. There are columns for each species that total the number of months/weeks the species was detected, and columns that total the number of months/weeks the species was not detected — when combined for each species, these are used as the proportional binomial response variable in occupancy models.

-   **Number of variables/columns:** 30
-   **Number of observations/rows:** 539

**Variable List:**

-   [**array**]{style="color: #2274A5;"}, [**array_visit**]{style="color: #2274A5;"}, [**site**]{style="color: #2274A5;"}, identify the landscape unit, array-visit, and camera site.

-   [**months_active**]{style="color: #2274A5;"} / [**weeks_active**]{style="color: #2274A5;"}, numeric total number of months/weeks (with \>= 0.5 of the period active) that the camera was operating.

-   [**black_bear - wolverine**]{style="color: #2274A5;"}, each of these columns is a numeric integer representing the number of months/weeks a species was detected (excluding hibernation months for black bears by removing Dec-Mar for black bears). Species included: black bear, caribou, cougar, coyote, fisher, grey wolf, lynx, moose, red fox, red squirrel, snowshoe hare, white-tailed deer, wolverine.

-   [**absent_black_bear - absent_wolverine**]{style="color: #2274A5;"}, each of these columns is a numeric integer representing the number of months/weeks a species was **not** detected (controlling for hibernation months for black bears by removing Dec-Mar).

### DATA-SPECIFIC INFORMATION FOR: [[OSM_timelapse_2021-2024.csv]{style="color: #7B0F17;"}]

-   **Number of variables/columns:** 45
-   **Number of observations/rows:** 945,027
-   For more information on tagging details, consult the ACME OSM Image Tagging Protocol.

**Variable List:**

-   [**rootfolder**]{style="color: #2274A5;"}, character, the name of the deployment/image folder the source .ddb file was built from.

-   [**file**]{style="color: #2274A5;"}, character with the name of the original camera image.

-   [**relativepath**]{style="color: #2274A5;"}, character with the relative path of the image compared to the .ddb file.

-   [**deleteflag**]{style="color: #2274A5;"}, logical, whether the image was flagged for deletion during tagging.

-   [**site**]{style="color: #2274A5;"}, factor where the first element abbreviation describes the landscape unit and the second element describes the camera site.

-   [**array**]{style="color: #2274A5;"}, factor describing the landscape unit of a camera.

-   [**array_visit**]{style="color: #2274A5;"}, factor combining the array and sample year.

-   [**classifier**]{style="color: #2274A5;"}, character, the person who tagged the image data.

-   [**snow**]{style="color: #2274A5;"}, factor, the percent snow cover on the ground in the image.

-   [**species**]{style="color: #2274A5;"}, factor, the identity of the species present in the image.

-   [**total**]{style="color: #2274A5;"}, numeric, the total number of animals in the image.

-   [**male**]{style="color: #2274A5;"}, numeric, the total number of male animals in the image. Only for animals larger than coyotes.

-   [**female**]{style="color: #2274A5;"}, numeric, the total number of female animals in the image. Only for animals larger than coyotes.

-   [**unknownsex**]{style="color: #2274A5;"}, numeric, the total number of animals with unidentifiable sex in the image. Only for animals larger than coyotes.

-   [**adult**]{style="color: #2274A5;"}, numeric, the total number of adult animals in the image. Only for animals larger than coyotes.

-   [**yly**]{style="color: #2274A5;"}, numeric, the total number of yearling animals in the image. Only for animals larger than coyotes.

-   [**yoy**]{style="color: #2274A5;"}, numeric, the total number of young of year animals in the image. Only for animals larger than coyotes.

-   [**unknownage**]{style="color: #2274A5;"}, numeric, the total number of animals with unidentifiable age in the image. Only for animals larger than coyotes.

-   [**group_count**]{style="color: #2274A5;"}, numeric, the total number of animals in the event image sequence (see event column).

-   [**g_male**]{style="color: #2274A5;"}, numeric, the total number of male animals in the event image sequence. Only for animals larger than coyotes.

-   [**g_female**]{style="color: #2274A5;"}, numeric, the total number of female animals in the event image sequence. Only for animals larger than coyotes.

-   [**g_unknownsex**]{style="color: #2274A5;"}, numeric, the total number of animals with unidentifiable sex in the event image sequence. Only for animals larger than coyotes.

-   [**g_adult**]{style="color: #2274A5;"}, numeric, the total number of adult animals in the event image sequence. Only for animals larger than coyotes.

-   [**g_yly**]{style="color: #2274A5;"}, numeric, the total number of yearling animals in the event image sequence. Only for animals larger than coyotes.

-   [**g_yoy**]{style="color: #2274A5;"}, numeric, the total number of young of year animals in the event image sequence. Only for animals larger than coyotes.

-   [**gunknownage**]{style="color: #2274A5;"}, numeric, the total number of animals with unidentifiable age in the event image sequence. Only for animals larger than coyotes.

-   [**event**]{style="color: #2274A5;"}, factor, indicates the first and last image in an event. An "event" is a continuous sequence of images where fewer than 60 seconds pass between two successive images. Singleton events are not tagged.

-   [**empty**]{style="color: #2274A5;"}, logical, whether an animal is present in the image.

-   [**coatcolour**]{style="color: #2274A5;"}, factor, the coat colour of one of the animals in the image. Only for bears, wolves, and foxes.

-   [**leftantler**]{style="color: #2274A5;"}, factor, the number of left antler tines for ungulates. Only for specific months (species specific).

-   [**rightantler**]{style="color: #2274A5;"}, factor, the number of right antler tines for ungulates. Only for specific months (species specific).

-   [**lcount**]{style="color: #2274A5;"}, factor, whether the left tine count is a total or minimum estimate.

-   [**rcount**]{style="color: #2274A5;"}, factor, whether the right tine count is a total or minimum estimate.

-   [**cameramalfunction**]{style="color: #2274A5;"}, factor, details about camera errors such as trigger malfunction or repositioning.

-   [**otherspecify**]{style="color: #2274A5;"}, character, details when 'other' is entered for species or camera malfunction.

-   [**comments**]{style="color: #2274A5;"}, character, miscellaneous comments about the image.

-   [**noteworthy**]{style="color: #2274A5;"}, logical, whether the photo is noteworthy and should be saved for reporting.

-   [**datetime**]{style="color: #2274A5;"}, datetime, the date and time the image was taken.

-   [**folder**]{style="color: #2274A5;"}, character, the sub-folder the image belongs to.

-   [**imagequality**]{style="color: #2274A5;"}, factor, a quality flag assigned during tagging (e.g. blurry, obstructed).

-   [**month**]{style="color: #2274A5;"}, numeric, month the image was taken.

-   [**day**]{style="color: #2274A5;"}, numeric, day the image was taken.

-   [**year**]{style="color: #2274A5;"}, numeric, year the image was taken.

-   [**fullpath**]{style="color: #2274A5;"}, character, the filepath to the original image on the Netdrive.

-   [**datasource**]{style="color: #2274A5;"}, character, the filepath to the original .ddb on the Netdrive containing the image data.
