library(tmap)
library(tmaptools)
library(dplyr)

wngig = geocode_OSM("wydział nauk geograficznych i geologicznych, poznan", as.sf = TRUE)
lot = geocode_OSM("lotnisko ławica, poznań", as.sf = TRUE)
train = geocode_OSM("Poznań Main, poznań", as.sf = TRUE)

all = rbind(wngig, lot, train)
all = all %>% 
  mutate(name = c("Konferencja",
                  "Lotnisko", 
                  "Dworzec kolejowy i autobusowy"),
         id = as.factor(1:3)) %>% 
  select(name, id)

system("mogrify  -transparent white -format png *.svg")
my_icons = tmap_icons(c("university.png", "airport.png", "train-station.png"))

tmap_mode("view")
a = tm_shape(all) +
  tm_basemap(c("OpenStreetMap", "Esri.WorldTopoMap", "Esri.WorldGrayCanvas")) +
  tm_symbols(shape = "id", shapes = my_icons, clustering = FALSE, popup.vars = NULL)
a
tmap_save(a, "map.html")
