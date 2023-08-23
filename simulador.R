sim_dist <- function(dist) {
  
  if (dist$distribution == "bernoulli") {
    
    result <- rbinom(dist$obs, size = 1, prob = dist$p)
    
  } else if (dist$distribution == "poisson") {
    
    result <- rpois(dist$obs, lambda = dist$lambda)
    
  } else if (dist$distribution == "normal") {
    
    result <- rnorm(dist$obs, mean = dist$mu, sd = sqrt(dist$sigma2))
    
  } else {
    
    stop("Distribuição e/ou parâmetros inválidos")
    
  }
  
  return(result)
  
}

# arg <- list(distribution = "poisson", lambda = 2.0, obs = 20)
# arg <- list(distribution = "normal", mu = 1.2, sigma2 = 1.0, obs = 25)
# arg <- list(distribution = "bernoulli", p = 0.3, obs = 30)