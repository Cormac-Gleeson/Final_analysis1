
#Relationship between GNI & LifeExp
ggplotly(timeseries_plot_3) 

'Snapshot of Word Life Expectancy 1980'
ggplot(map_data_1980) + 
  aes(x = long, y = lat, group = group, fill = LifeExp) + 
  geom_polygon()

#Life Expectancy of Each Continent over Years
ggplotly(timeseries_plot_2)

#Relationship Continents timeline of Water Supply
ScatterplotC <- ggplot(data_join3_2000_2022) +
  aes(`Proportion Using Limited Drinking Water`, year, color = Continent) +
  geom_point(alpha = 0.2) +
  facet_wrap(~ Continent) 

#Relationship Between GDP and Life Expectancy 
data_join %>%
  +   ggplot() + 
  +   aes(`GDP Per Cap($)`, LifeExp, group = country, color = Continent) +
  +   geom_line()

#GNI rising in Each Continent
plot_ly(data = data_join3, x = ~year, y = ~`GNI (current US$)`, color = ~Continent, type = 'scatter', mode = 'lines') %>%
  layout(title = "GNI Per Capita by Continent Over Time",
         xaxis = list(title = "Year"),
         yaxis = list(title = "GNI Per Capita"),
         hovermode = "closest") 
