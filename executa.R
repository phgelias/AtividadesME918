source("simulador.R")

require(devtools)
require(purrr)

devtools::source_url("https://ime.unicamp.br/~ra137784/ME918/2023s2/lab01_ig.R")
planos <- input_lab01()

resultados <- map(planos, sim_dist)
