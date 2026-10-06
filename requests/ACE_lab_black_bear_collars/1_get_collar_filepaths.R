### Extract collared bears



# Load 'er up! 
library(tidyverse)

# Read in the image data 
images <- 
  read_csv(
    "./data/processed/OSM_timelapse_2021-2024.csv"
  )

# Read in the coordinate data
coords <- 
  read_csv("./data/processed/OSM_site_coordinates_2021-2024.csv") %>%
  select(
    site,
    long,
    lat,
    easting_12n,
    northing_12n
  )

# Some keywords that might be useful
# Related to any sort of marking
keywords <-
  c("tag",
    "collar",
    " ear",
    "marking",
    "yellow",
    "orange",
    "mark",
    "blaze",
    "neck",
    "number",
    "#"
  )

bears <- 
  images %>%
  
  # Flag images where the comments or otherspecify columns
  # match our selected keywords
  mutate(
    possible_collar = 
      grepl(
        paste0(
          keywords, collapse = "|"
          ),
        comments, 
        ignore.case = TRUE
        ) | 
      grepl(
        paste0(
          keywords, collapse = "|"
        ),
        otherspecify, 
        ignore.case = TRUE
      )
    ) %>%
  
  filter(
    species == "Black bear",
    possible_collar == TRUE,
    empty == FALSE,
    total > 0
  ) %>%
  
  select(
    datasource, 
    rootfolder,
    file,
    array_visit,
    fullpath,
    relativepath,
    array, 
    site, 
    species,
    total,
    datetime,
    comments,
    otherspecify
  )

# How many entries in each column?
bears %>% 
  distinct(comments) %>%
  pull(comments)

bears %>%
  distinct(otherspecify) %>%
  pull(otherspecify)

# There are no notes about tags in other-specify. 
# We can remove this column to keep things cleaner. 

# Let's try to repair the missing file paths
# This is not too bad, but a bit annoying given the lack of file
# continuity over the years. We'll build the directories using a few 
# helper columns:
bears_paths <- 
  bears %>%
  mutate(
    
    # Which year-folder to look in?
    netdrive_year = 
      str_sub(
        array_visit,
        start = -4
        ) %>%
      as.numeric(),
    
    # Best-guess of the file path for a year-folder
    fullpath = 
      ifelse(
        is.na(fullpath),
        paste0(
          "1. Imagery/",
          array, 
          "/",
          site,
          "/",
          "Deployment 1",
          "/",
          file
          ),
        fullpath
        ),
      
    # Tack on the path from the Netdrive
    netdrive_path = 
      paste0(
        "Z:/3. ACME Projects/1. Alberta/OSM/",
        netdrive_year, 
        "-",
        (netdrive_year + 1),
        "/",
        fullpath
      )
     ) %>%
  
  # Does the directory exist? Check our work.
  mutate(
    good_path =
      file.exists(netdrive_path)
    )

# Looks like all files exist. 
# Yay we have successfully repaired the broken directories!!

# Let's export all the images to a new directory for sharing. 
bears_export <- 
  bears_paths %>%
  
  # Destination path:
  mutate(
    target_path =
      paste(
        site,
        format(datetime, "%Y%m%d_%H%M%S"),
        file,
        sep = "_"
      )
  ) %>%

  # Append the coordinates
  left_join(
    coords,
    by = "site"
  ) %>%

# Clean up
select(
  array, 
  site, 
  long,
  lat,
  easting_12n,
  northing_12n,
  datetime, 
  species,
  total_animals = total, 
  comments,
  source_path = netdrive_path,
  target_path
  )

# Write the file: 
write_csv(
  bears_export,
  file = "./requests/ACE_lab_black_bear_collars/ACME_lab_black_bear_collar_detections.csv"
)
  
# Create the images
  fs::file_copy(
    path = 
      bears_export$source_path,
    new_path = 
      paste0(
        "./requests/ACE_lab_black_bear_collars/images/",
        bears_export$target_path
        ),
    overwrite = TRUE
  )
