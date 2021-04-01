library(sf)
library(rnaturalearth)
library(mapview)
dat = ne_countries(country = "Israel", returnclass = "sf")
g = st_graticule(dat)
g = g[g$degree %% 1 == 0, ]
m = mapview(g)
mapshot(m, "index.html")
