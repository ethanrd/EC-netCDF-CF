#!/bin/bash

# Copied from THREDDS 5.0
# (See https://github.com/Unidata/thredds/blob/5.0.0/docs/website/adoc2html.sh)
#
# find all adoc files and convert them to html
#
echo "Render all adoc files to html"
find . -type f -name "*.adoc" -print | xargs -n 1 asciidoctor
##
## Make sure to link the thredds specific css file.
#    -a linkcss -a stylesheet=thredds_adoc.css

##
## Any directory that contains .adoc files will need a copy
## of the thredds_adoc.css file inside of it.
##
#declare -a needsCssFile=("./netcdf-java"
#"./netcdf-java/CDM"
#"./netcdf-java/images"
#"./netcdf-java/internal"
#"./netcdf-java/metadata"
#"./netcdf-java/ncml"
#"./netcdf-java/reference"
#"./netcdf-java/reference/FeatureDatasets"
#"./netcdf-java/reference/formats"
#"./netcdf-java/reference/stream"
#"./netcdf-java/reference/ToolsUI"
#"./netcdf-java/tutorial"
#"./tds"
#"./tds/catalog"
#"./tds/internal"
#"./tds/reference"
#"./tds/reference/collections"
#"./tds/reference/radarServer"
#"./tds/reference/services"
#"./tds/tutorial"
#"./tds/tutorial/cssdocs"
#"./tds/tutorial/examples")
#
#echo "Copying master thredds project css file to all dirs"
## iterate over all dirs that need the css
#for i in "${needsCssFile[@]}"
#do
#    # copy css to the dirs
#    cp ./css/master_thredds_adoc.css "$i/thredds_adoc.css"
#done