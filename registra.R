source("executa.R")

sim_results <- map2(.x = planos, .y = resultados, function(x,y) c(x, sim = list(y)))

sim_save <- function(sim_results) {
  
  for (i in 1:length(planos)) {
    
    if (i < 10) {
      
      index <- paste0("0", i)
      
    } else {
      
      index <- i
      
    }
    
    if (sim_results[[i]]$distribution == "bernoulli") {
      
      distribution <- sim_results[[i]]$distribution
      p <- sim_results[[i]]$p
      obs <- sim_results[[i]]$obs
      result <- sim_results[[i]]$sim
      
      save(distribution, p, obs, result,
           file = paste0("./resultados/simulacao", index, ".RData"))
      
    } else if (sim_results[[i]]$distribution == "poisson") {
      
      distribution <- sim_results[[i]]$distribution
      lambda <- sim_results[[i]]$lambda
      obs <- sim_results[[i]]$obs
      result <- sim_results[[i]]$sim
      
      save(distribution, lambda, obs, result,
           file = paste0("./resultados/simulacao", index, ".RData"))
      
    } else if (sim_results[[i]]$distribution == "normal") {
      
      distribution <- sim_results[[i]]$distribution
      mu <- sim_results[[i]]$mu
      sigma2 <- sim_results[[i]]$sigma2
      obs <- sim_results[[i]]$obs
      result <- sim_results[[i]]$sim
      
      save(distribution, mu, sigma2, obs, result,
           file = paste0("./resultados/simulacao", index, ".RData"))
      
    }
    
  }
  
}

sim_save(sim_results = sim_results)
