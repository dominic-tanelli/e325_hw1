# Dominic Tanelli
# Prof. Kropp
# ENVST 325
# 12 September 2024

# Homework 1

# In-Class Prompts
# Prompt 1
avg_snow_depth_in <- c(2.5, 3, 5, 4.5)
cat("Prompt 1 Answer (Vector of Observations [in inches]):", paste(avg_snow_depth_in, collapse = ", "), "\n")
in_to_cm <- 2.54
avg_snow_depth_cm <- avg_snow_depth_in * in_to_cm
cat("\nPrompt 1 Answer (Vector of Observations [in centimeters]):", paste(avg_snow_depth_cm, collapse = ", "), "\n")

# Prompt 2
names <- c("Mount Haystack", "Mount Skylight", "Dix Mountain", "Gray Peak")
elevation_ft <- c(4960, 4926, 4857, 4840)
climb_ascent_ft <- c(3570, 4265, 2800, 4178)
round_trip_length_mi <- c(17.8, 17.9, 13.2, 16)
high_peaks <- data.frame('Name' = names,
                         'Elevation (ft)' = elevation_ft,
                         'Climb Ascent (ft)' = climb_ascent_ft,
                         'Round Trip Length (mi)' = round_trip_length_mi,
                         check.names = FALSE)
cat("\nPrompt 2 Answer: \n")
print(high_peaks)

# Prompt 3
degrees_celsius <- c(-44, 0, 20, 35)
conversion_factor <- 9/5
water_freezing_point <- 32
degrees_fahrenheit <- (degrees_celsius * conversion_factor) + water_freezing_point
cat("\nPrompt 3 Answer:", paste(degrees_fahrenheit, collapse = ", "), "\n")

# Homework
# Question 1
ft_to_m <- 0.3048
elevation_m <- elevation_ft * ft_to_m
cat("\nQuestion 1 Answer:", paste(elevation_m, collapse = ", "), "\n")

# Question 2
cat("\nQuestion 2 Answer: See Word PDF\n")

# Question 3
longest_round_trip_row <- high_peaks[which.max(high_peaks$`Round Trip Length (mi)`), ]
cat("\nQuestion 3 Answer: \n")
print(longest_round_trip_row)

# Question 4
cat("\nQuestion 4 Answer: See Word PDF\n")
