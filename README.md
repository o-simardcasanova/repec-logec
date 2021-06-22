# README

**WORK IN PROGRESS**

This repository is basically CSV files of the [LogEc data](https://logec.repec.org/details.htm).

I update the data manually, so please do not expect any frequent update.

## How to use the data

You can access the data in two ways:
- download the CSV files manually
- import the CSV files directly into R

In R, providing you use the Tidyverse, you can import any CSV file with the following code:

`imported_csv <- read_delim("https://github.com/simardcasanova/repec-logec/raw/main/csv/nb_items_month.csv", delim = ",")`

Change the last part of the URL according to the CSV file you need. All available CSV files are listed in the [`csv` folder](https://github.com/simardcasanova/repec-logec/tree/main/csv).

## What I do

I basically copy-paste the data from the website to an ODS file. I then import and rework the data in `data.R`, and export the final product in CSV files. You can file the CSV files in the `csv` folder.