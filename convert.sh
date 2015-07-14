#!/bin/bash

#
# Converting files to GeoJSON
#
ogr2ogr -f GeoJSON -t_srs crs:84 data/geojson/adm0.geojson data/ADM_00_gaul2013.shp
ogr2ogr -f GeoJSON -t_srs crs:84 data/geojson/adm1.geojson data/ADM_01_gaul2013.shp
ogr2ogr -f GeoJSON -t_srs crs:84 data/geojson/adm2.geojson data/ADM_02_gaul2013.shp

#
# Simplifying files.
#
mapshaper data/ADM_00_gaul2013.shp -simplify 0.1% -o format=geojson
mapshaper data/ADM_01_gaul2013.shp -simplify 0.1% -o format=geojson
mapshaper data/ADM_02_gaul2013.shp -simplify 0.1% -o format=geojson
