# starter visualizations and summary stats

# load in data
library(readr)
stars <- read_csv("CC Final Project/6 class csv.csv")
View(stars)

# load in packages
library(tidyverse)

# look at levels in star color
print(factor(stars$`Star color`))

# general summary stats
summary(stars)
summary(stars$`Temperature (K)`)
summary(stars$`Luminosity(L/Lo)`)
summary(stars$`Radius(R/Ro)`)
summary(stars$`Absolute magnitude(Mv)`)

# starter plots

# absolute magnitude vs. temperature over star type scatterplot
ggplot(stars, aes(x = `Absolute magnitude(Mv)`, y = `Temperature (K)`, color = `Star type`)) +
  geom_point(alpha = 0.8)
# absolute magnitude vs. temperature over star color scatterplot
ggplot(stars, aes(x = `Absolute magnitude(Mv)`, y = `Temperature (K)`, color = `Star color`)) +
  geom_point(alpha = 0.7)
# luminosity vs. temperature over star type scatterplot
ggplot(stars, aes(x = `Luminosity(L/Lo)`, y = `Temperature (K)`, color = `Star type`)) +
  geom_point(alpha = 0.8)
# luminosity vs. temperature over star color scatterplot
ggplot(stars, aes(x = `Luminosity(L/Lo)`, y = `Temperature (K)`, color = `Star color`)) +
  geom_point(alpha = 0.7)
# radius vs. temperature over star type scatterplot
ggplot(stars, aes(x = `Radius(R/Ro)`, y = `Temperature (K)`, color = `Star type`)) +
  geom_point(alpha = 0.8)
# radius vs. temperature over star color scatterplot
ggplot(stars, aes(x = `Radius(R/Ro)`, y = `Temperature (K)`, color = `Star color`)) +
  geom_point(alpha = 0.7)
# radius vs. luminosity over star type scatterplot
ggplot(stars, aes(x = `Radius(R/Ro)`, y = `Luminosity(L/Lo)`, color = `Star type`)) +
  geom_point(alpha = 0.8)
# radius vs. luminosity over star color scatterplot
ggplot(stars, aes(x = `Radius(R/Ro)`, y = `Luminosity(L/Lo)`, color = `Star color`)) +
  geom_point(alpha = 0.7)


# bar graph of star color across spectral class
ggplot(stars, aes(x = `Spectral Class`, fill = `Star color`)) + 
  geom_bar(position = "fill")

# boxplot of temperature across spectral class
ggplot(stars, aes(x = `Spectral Class`, y = `Temperature (K)`)) +
  geom_boxplot()
# boxplot of luminosity across spectral class
ggplot(stars, aes(x = `Spectral Class`, y = `Luminosity(L/Lo)`)) +
  geom_boxplot()
# boxplot of radius across spectral class
ggplot(stars, aes(x = `Spectral Class`, y = `Radius(R/Ro)`)) +
  geom_boxplot()
# boxplot of absolute magnitude across spectral class
ggplot(stars, aes(x = `Spectral Class`, y = `Absolute magnitude(Mv)`)) +
  geom_boxplot()

# look at white stars
white_stars <- stars %>%
  filter(`Star color` %in% c("White","Whitish"))
white_stars
# summary stats
mean(white_stars$`Temperature (K)`)
mean(white_stars$`Luminosity(L/Lo)`)
mean(white_stars$`Radius(R/Ro)`)
mean(white_stars$`Absolute magnitude(Mv)`)

sd(white_stars$`Temperature (K)`)
sd(white_stars$`Luminosity(L/Lo)`)
sd(white_stars$`Radius(R/Ro)`)
sd(white_stars$`Absolute magnitude(Mv)`)

summary(white_stars)

# temperature plot
ggplot(white_stars, aes(x = `Star color`, y = `Temperature (K)`, fill = `Star color`)) +
  geom_boxplot() +
  labs(title = "Boxplot of Temperature for White Stars",
       x = "Star Color",
       y = "Temperature (K)") +
  theme_minimal()

white_vec <- c(mean(white_stars$`Temperature (K)`),
               mean(white_stars$`Luminosity(L/Lo)`),
               mean(white_stars$`Radius(R/Ro)`),
               mean(white_stars$`Absolute magnitude(Mv)`))

#look at red stars
red_stars <- stars %>%
  filter(`Star color` %in% c("Red"))
red_stars
# summary stats
mean(red_stars$`Temperature (K)`)
mean(red_stars$`Luminosity(L/Lo)`)
mean(red_stars$`Radius(R/Ro)`)
mean(red_stars$`Absolute magnitude(Mv)`)

sd(red_stars$`Temperature (K)`)
sd(red_stars$`Luminosity(L/Lo)`)
sd(red_stars$`Radius(R/Ro)`)
sd(red_stars$`Absolute magnitude(Mv)`)

summary(red_stars)

# temperature plot
ggplot(red_stars, aes(x = `Star color`, y = `Temperature (K)`, fill = `Star color`)) +
  geom_boxplot() +
  labs(title = "Boxplot of Temperature for Red Stars",
       x = "Star Color",
       y = "Temperature (K)") +
  theme_minimal()

red_vec <- c(mean(red_stars$`Temperature (K)`),
             mean(red_stars$`Luminosity(L/Lo)`),
             mean(red_stars$`Radius(R/Ro)`),
             mean(red_stars$`Absolute magnitude(Mv)`))

# look at blue stars
blue_stars <- stars %>%
  filter(`Star color` %in% c("Blue"))
blue_stars
# summary stats
mean(blue_stars$`Temperature (K)`)
mean(blue_stars$`Luminosity(L/Lo)`)
mean(blue_stars$`Radius(R/Ro)`)
mean(blue_stars$`Absolute magnitude(Mv)`)

sd(blue_stars$`Temperature (K)`)
sd(blue_stars$`Luminosity(L/Lo)`)
sd(blue_stars$`Radius(R/Ro)`)
sd(blue_stars$`Absolute magnitude(Mv)`)

summary(blue_stars)

# temperature plot
ggplot(blue_stars, aes(x = `Star color`, y = `Temperature (K)`, fill = `Star color`)) +
  geom_boxplot() +
  labs(title = "Boxplot of Temperature for Blue Stars",
       x = "Star Color",
       y = "Temperature (K)") +
  theme_minimal()

blue_vec <- c(mean(blue_stars$`Temperature (K)`),
              mean(blue_stars$`Luminosity(L/Lo)`),
              mean(blue_stars$`Radius(R/Ro)`),
              mean(blue_stars$`Absolute magnitude(Mv)`))

# look at blue-white stars
bluew_stars <- stars %>%
  filter(`Star color` %in% c("Blue-white", "Blue white", "Blue White"))
bluew_stars
# summary stats
mean(bluew_stars$`Temperature (K)`)
mean(bluew_stars$`Luminosity(L/Lo)`)
mean(bluew_stars$`Radius(R/Ro)`)
mean(bluew_stars$`Absolute magnitude(Mv)`)

sd(bluew_stars$`Temperature (K)`)
sd(bluew_stars$`Luminosity(L/Lo)`)
sd(bluew_stars$`Radius(R/Ro)`)
sd(bluew_stars$`Absolute magnitude(Mv)`)

summary(bluew_stars)

# temperature plot
ggplot(bluew_stars, aes(x = `Star color`, y = `Temperature (K)`, fill = `Star color`)) +
  geom_boxplot() +
  labs(title = "Boxplot of Temperature for Blue-white Stars",
       x = "Star Color",
       y = "Temperature (K)") +
  theme_minimal()

bw_vec <- c(mean(bluew_stars$`Temperature (K)`),
            mean(bluew_stars$`Luminosity(L/Lo)`),
            mean(bluew_stars$`Radius(R/Ro)`),
            mean(bluew_stars$`Absolute magnitude(Mv)`))

# look at orange stars
orange_stars <- stars %>%
  filter(`Star color` %in% c("Orange"))
orange_stars
# summary stats
mean(orange_stars$`Temperature (K)`)
mean(orange_stars$`Luminosity(L/Lo)`)
mean(orange_stars$`Radius(R/Ro)`)
mean(orange_stars$`Absolute magnitude(Mv)`)

sd(orange_stars$`Temperature (K)`)
sd(orange_stars$`Luminosity(L/Lo)`)
sd(orange_stars$`Radius(R/Ro)`)
sd(orange_stars$`Absolute magnitude(Mv)`)

summary(orange_stars)

# temperature plot
ggplot(orange_stars, aes(x = `Star color`, y = `Temperature (K)`, fill = `Star color`)) +
  geom_boxplot() +
  labs(title = "Boxplot of Temperature for Orange Stars",
       x = "Star Color",
       y = "Temperature (K)") +
  theme_minimal()

orange_vec <- c(mean(orange_stars$`Temperature (K)`),
                mean(orange_stars$`Luminosity(L/Lo)`),
                mean(orange_stars$`Radius(R/Ro)`),
                mean(orange_stars$`Absolute magnitude(Mv)`))

# look at yellow-white and yellow stars
yellow_stars <- stars %>%
  filter(`Star color` %in% c("Yellowish White", "yellow-white", "White-Yellow", "Yellowish", "yellowish"))
yellow_stars
# summary stats
mean(yellow_stars$`Temperature (K)`)
mean(yellow_stars$`Luminosity(L/Lo)`)
mean(yellow_stars$`Radius(R/Ro)`)
mean(yellow_stars$`Absolute magnitude(Mv)`)

sd(yellow_stars$`Temperature (K)`)
sd(yellow_stars$`Luminosity(L/Lo)`)
sd(yellow_stars$`Radius(R/Ro)`)
sd(yellow_stars$`Absolute magnitude(Mv)`)

summary(yellow_stars)

# temperature plot
ggplot(yellow_stars, aes(x = `Star color`, y = `Temperature (K)`, fill = `Star color`)) +
  geom_boxplot() +
  labs(title = "Boxplot of Temperature for Yellow Stars",
       x = "Star Color",
       y = "Temperature (K)") +
  theme_minimal()

yellow_vec <- c(mean(yellow_stars$`Temperature (K)`),
                mean(yellow_stars$`Luminosity(L/Lo)`),
                mean(yellow_stars$`Radius(R/Ro)`),
                mean(yellow_stars$`Absolute magnitude(Mv)`))

# new dataframe
means <- data.frame(white_vec, red_vec, blue_vec, bw_vec, orange_vec, yellow_vec)
colnames(means) <- c("White", "Red", "Blue", "Blue-white", "Orange", "Yellow")
rownames(means) <- c("Temperature(K)", "Luminosity(L/Lo)", "Radius(R/Ro)", "Absolute Magnitude(Mv)")

# reshape dataframe
means <- means %>%
  rownames_to_column(var = "Metric") %>%
  pivot_longer(cols = -Metric, names_to = "Color", values_to = "Value")
means <- means %>%
  pivot_wider(names_from = Metric, values_from = Value)
means

# plots

# temperature over color
ggplot(means, aes(x = Color, y = `Temperature(K)`), color = Color) +
  geom_point(alpha = 0.7) +
  labs(title = "Scatter Plot of Star Color vs. Temperature",
       x = "Star Color",
       y = "Temperature (K)") +
  theme_minimal()

# luminosity over color
ggplot(means, aes(x = Color, y = `Luminosity(L/Lo)`), color = Color) +
  geom_point(alpha = 0.7) +
  labs(title = "Scatter Plot of Star Color vs. Luminosity",
       x = "Star Color",
       y = "Luminosity (L/Lo)") +
  theme_minimal()

# radius over color
ggplot(means, aes(x = Color, y = `Radius(R/Ro)`), color = Color) +
  geom_point(alpha = 0.7) +
  labs(title = "Scatter Plot of Star Color vs. Radius",
       x = "Star Color",
       y = "Radius (R/Ro)") +
  theme_minimal()

# absolute magnitude over color
ggplot(means, aes(x = Color, y = `Absolute Magnitude(Mv)`), color = Color) +
  geom_point(alpha = 0.7) +
  labs(title = "Scatter Plot of Star Color vs. Absolute Magnitude",
       x = "Star Color",
       y = "Absolute Magnitude (Mv)") +
  theme_minimal()

# pairs
pairs_data <- means
  pairs_data$Color <- as.factor(pairs_data$Color)
  levels(pairs_data$Color) <- 
  c("White", "Red", "Blue4", "Blue", "Orange", "Yellow3")
pairs_data

custom <- c("Blue4" = "blue4", "Blue" = "blue", 
             "Orange" = "orange", "Red" = "red", 
             "White" = "white", "Yellow3" = "yellow3")
  
pairs(pairs_data[, 2:5],
      main = "Pairs Plot of Means Dataset",
      pch = 21,
      bg = custom[pairs_data$Color])

# temperature vs. luminosity over color
ggplot(means, aes(`Temperature(K)`, `Luminosity(L/Lo)`, color = Color)) +
  geom_point() +
  scale_color_manual(values = c("Blue" = "blue4", "Blue-white" = "blue", 
                                "Orange" = "orange", "Red" = "red", 
                                "White" = "black", "Yellow" = "yellow3")) +
  labs(title = "Scatter Plot of Star Temperature vs. Luminosity",
       x = "Temperature (K)",
       y = "Luminosity (L/Lo)") +
  theme_minimal()

# temperature vs. radius over color
ggplot(means, aes(`Temperature(K)`, `Radius(R/Ro)`, color = Color)) +
  geom_point() + 
  scale_color_manual(values = c("Blue" = "blue4", "Blue-white" = "blue", 
                                "Orange" = "orange", "Red" = "red", 
                                "White" = "black", "Yellow" = "yellow3")) +
  labs(title = "Scatter Plot of Star Temperature vs. Radius",
       x = "Temperature (K)",
       y = "Radius (R/Ro)") +
  theme_minimal()

# want to possibly derive star mass from luminosity


