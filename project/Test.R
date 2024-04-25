install.packages("tidyverse")
library("tidyverse")
install.packages("plotly")
library("plotly")

unicef_metadata <- read_csv("unicef_metadata.csv")
unicef_indicator_1 <- read_csv("unicef_indicator_1.csv")


data_join <- full_join(unicef_metadata, unicef_indicator_1)

map_world <- map_data("world")
1

map_data_1980<-full_join(data_join_1980, map_world, by =c("country" = "region"))

ggplot(map_data_join) + 
  aes(x = long, y = lat, group = group, fill = LifeExp) + 
  geom_polygon()

data_join_1980 <- data_join %>% 
  filter(year==1980)
     
ggplot(map_data_1980) + 
  aes(x = long, y = lat, group = group, fill = LifeExp) + 
  geom_polygon()

# Filter the map_data_join dataset for the year 2020
map_data_2020 <- map_data_join %>%
  filter(year == 2020)

# Plot the map for the year 2020
ggplot(map_data_2020) + 
  aes(x = long, y = lat, group = group, fill = LifeExp) + 
  geom_polygon()

data_join$Continent <- countrycode(data_join$country, origin = "country.name", destination = "continent")


timeseries_plot_2 <-  data_join %>%
  ggplot() + 
  aes(year, LifeExp, group = country, color = Continent) +
  geom_line()

ggplotly(timeseries_plot_2)
  

timeseries_plot_3 <- data_join3 %>%
  ggplot() + 
  aes(`GNI (current US$)`, LifeExp, group = country, color = Continent) +
  geom_line()

data_join_2<- full_join(unicef_metadata, unicef_indicator_1)
data_join$Original_GDP <- scale(data_join$Normalized_GDP, center = FALSE, scale = 1/sd(data_join$Normalized_GDP))

options(scipen = 999)

data_join3 <- full_join(unicef_metadata_1_, data_join)

ggplotly(timeseries_plot_3)

# Rename the column
data_join3 <- data_join3 %>%
  rename("Proportion Using Limited Drinking Water" = "Proportion of population using limited drinking water services (%)")


ScatterplotC <- ggplot(data_join3_2000_2022) +
  aes(`Proportion Using Limited Drinking Water`, year, color = Continent) +
  geom_point(alpha = 0.2) +
  facet_wrap(~ Continent) 
  
ggplot(data_join3_2000_2022) +
  aes(`Proportion Using Limited Drinking Water`, year, color = Continent) +
  geom_point(alpha = 0.2) +
  facet_wrap(~ Continent)
  
  data_join3_2000_2022 <-data_join3 %>% 
  filter( year >=2000)
  
  ggplotly(timeseries_plot_2)

  
  data_join %>%
      ggplot() + 
      aes(`GDP Per Cap($)`, LifeExp, group = country, color = Continent) +
     geom_line()

  plot_ly(data = data_join3, x = ~year, y = ~`GNI (current US$)`, color = ~Continent, type = 'scatter', mode = 'lines') %>%
    layout(title = "GNI Per Capita by Continent Over Time",
           xaxis = list(title = "Year"),
           yaxis = list(title = "GNI Per Capita"),
           hovermode = "closest") 

   
           
  
  
  