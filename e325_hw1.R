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
  print("Question Three Answer:")
  longest_round_trip_row
}

question_one <- function() {
  ft_to_m <- 0.3048
  elevation_m <- elevation_ft * ft_to_m
  print(paste("Question One Answer:", paste(elevation_m, collapse = " ")))
}

homework <- function() {
  question_one()
  print("Question Two Answer: See Word PDF")
  question_three()
}

prompt_three <- function() {
  degrees_celsius <- c(-44, 0, 20, 35)
  conversion_factor <- 9/5
  water_freezing_point <- 32
  degrees_fahrenheit <- (degrees_celsius * conversion_factor) + water_freezing_point
  print(paste("Prompt Three Answer:", paste(degrees_fahrenheit, collapse = " ")))
}

prompt_two <- function() {
  print("Prompt Two Answer:")
  print(high_peaks)
}

prompt_one <- function() {
  avg_snow_depth_in <- c(2.5, 3, 5, 4.5)
  in_to_cm <- 2.54
  avg_snow_depth_cm <- avg_snow_depth_in * in_to_cm
  print(paste("Prompt One Answer:", paste(avg_snow_depth_cm, collapse = " ")))
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
