# Global Variables
names <- c("Mount Haystack", "Mount Skylight", "Dix Mountain", "Gray Peak")
elevation_ft <- c(4960, 4926, 4857, 4840)
climb_ascent_ft <- c(3570, 4265, 2800, 4178)
round_trip_length_mi <- c(17.8, 17.9, 13.2, 16)
high_peaks <- data.frame('Name' = names,
                         'Elevation (ft)' = elevation_ft,
                         'Climb Ascent (ft)' = climb_ascent_ft,
                         'Round Trip Length (mi)' = round_trip_length_mi,
                         check.names = FALSE)

question_three <- function() {
  longest_round_trip_row <- high_peaks[which.max(high_peaks$`Round Trip Length (mi)`), ]
  cat("\nQuestion Three Answer: \n")
  print(longest_round_trip_row)
}

question_one <- function() {
  ft_to_m <- 0.3048
  elevation_m <- elevation_ft * ft_to_m
  cat("\nQuestion One Answer:", paste(elevation_m, collapse = ", "), "\n")
}

homework <- function() {
  question_one()
  cat("\nQuestion Two Answer: See Word PDF\n")
  question_three()
}

prompt_three <- function() {
  degrees_celsius <- c(-44, 0, 20, 35)
  conversion_factor <- 9/5
  water_freezing_point <- 32
  degrees_fahrenheit <- (degrees_celsius * conversion_factor) + water_freezing_point
  cat("\nPrompt Three Answer:", paste(degrees_fahrenheit, collapse = ", "), "\n")
}

prompt_two <- function() {
  cat("\nPrompt Two Answer: \n")
  print(high_peaks)
}

prompt_one <- function() {
  avg_snow_depth_in <- c(2.5, 3, 5, 4.5)
  cat("Prompt One Answer (Vector of Observations [in inches]):", paste(avg_snow_depth_in, collapse = ", "), "\n")
  in_to_cm <- 2.54
  avg_snow_depth_cm <- avg_snow_depth_in * in_to_cm
  cat("\nPrompt One Answer (Vector of Observations [in centimeters]):", paste(avg_snow_depth_cm, collapse = ", "), "\n")
}

in_class_prompts <- function() {
  prompt_one()
  prompt_two()
  prompt_three()
}

main <- function() {
  in_class_prompts()
  homework()
}

main()
