


###load threat status table

thr_fl <- "^thrt_status_2025_30_05_2025.xlsx$"
sheet <- "only_cr_en_vu_beth_ecosys"

thr <- readxl::read_excel(list.files(path = "quarto",
                                     pattern = thr_fl,
                                     recursive = TRUE,
                                     full.names = TRUE)[1],
                          sheet =sheet)

thr_pro <-  thr %>%
  select(ecosystem_type, RLE_2025, RLE_2018) %>%
  left_join(pro_lvl_tash_med)









