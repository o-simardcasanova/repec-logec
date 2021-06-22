library(tidyverse)
library(readODS)

# Import ----

nb_items_raw <- as_tibble(read_ods("repec-logec-data.ods", sheet = 1))
doc_types_dl_raw <- as_tibble(read_ods("repec-logec-data.ods", sheet = 2))
doc_types_ab_views_raw <- as_tibble(read_ods("repec-logec-data.ods", sheet = 3))
part_serv_dl_raw <- as_tibble(read_ods("repec-logec-data.ods", sheet = 4))
part_serv_ab_views_raw <- as_tibble(read_ods("repec-logec-data.ods", sheet = 5))

# Rework ----

## Document types - Downloads

doc_types_dl_month <- filter(doc_types_dl_raw, month != "Total")

doc_types_dl_total <- filter(doc_types_dl_raw, month == "Total")
doc_types_dl_total <- select(doc_types_dl_total, -month)

## Document types - Abstract views

doc_types_ab_views_month <- filter(doc_types_ab_views_raw, month != "Total")

doc_types_ab_views_total <- filter(doc_types_ab_views_raw, month == "Total")
doc_types_ab_views_total <- select(doc_types_ab_views_total, -month)

## Participating services - Downloads

part_serv_dl_month <- filter(part_serv_dl_raw, month != "Total")

part_serv_dl_total <- filter(part_serv_dl_raw, month == "Total")
part_serv_dl_total <- select(part_serv_dl_total, -month)

## Participating services - Abstract views

part_serv_ab_views_month <- filter(part_serv_ab_views_raw, month != "Total")

part_serv_ab_views_total <- filter(part_serv_ab_views_raw, month == "Total")
part_serv_ab_views_total <- select(part_serv_ab_views_total, -month)

# Export CSV ----

write_csv(nb_items_raw, "csv/nb_items_month.csv", na = "")

write_csv(doc_types_dl_month, "csv/doc_types_dl_month.csv", na = "")
write_csv(doc_types_dl_total, "csv/doc_types_dl_total.csv", na = "")

write_csv(doc_types_ab_views_month, "csv/doc_types_ab_views_month.csv", na = "")
write_csv(doc_types_ab_views_total, "csv/doc_types_ab_views_total.csv", na = "")

write_csv(part_serv_dl_month, "csv/part_serv_dl_month.csv", na = "")
write_csv(part_serv_dl_total, "csv/part_serv_dl_total.csv", na = "")

write_csv(part_serv_ab_views_month, "csv/part_serv_ab_views_month.csv", na = "")
write_csv(part_serv_ab_views_total, "csv/part_serv_ab_views_total.csv", na = "")
