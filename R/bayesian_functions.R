dpcode <- function(q1, q1L, q2L, times, cut){

  output = .Call('dpcode', PACKAGE = 'fdasrvfSpatReg', q1, q1L, q2L, times, cut);

  return(output)
}

simucode <- function(iter, p, qt1_5, qt2_5, L, tau, times, kappa, alpha, beta,
                     powera, dist, dist_min, best_match, match, thin, cut){

  output = .Call('simucode', PACKAGE = 'fdasrvfSpatReg', iter, p, qt1_5, qt2_5, L, tau,
                 times, kappa, alpha, beta, powera, dist, dist_min, best_match,
                 match, thin, cut);

  return(output)
}

itercode <- function(iter, n, m, mu_5, match_matrix, qt_matrix, qt_fitted_matrix,
                     L, tau, times, kappa, alpha, beta, powera, best_vec, dist_vec,
                     best_match_matrix, mu_prior, var_const, sumdist, thin, mu_q,
                     mu_q_standard, logmax, burnin, AVG){

  output = .Call('itercode', PACKAGE = 'fdasrvfSpatReg', iter, n, m, mu_5, match_matrix,
                 qt_matrix, qt_fitted_matrix, L, tau, times, kappa, alpha, beta,
                 powera, best_vec, dist_vec, best_match_matrix, mu_prior,
                 var_const, sumdist, thin, mu_q, mu_q_standard, logmax, burnin, AVG);

  return(output)
}

calcY <- function(area, gy) {
  output = .Call('calcY', PACKAGE = 'fdasrvfSpatReg', area, gy)
  return(output)
}

cuL2norm2 <- function(x, y) {
  output = .Call('cuL2norm2', PACKAGE = 'fdasrvfSpatReg', x, y)
  return(output)
}

trapzCpp <- function(x, y) {
  output = .Call('trapzCpp', PACKAGE = 'fdasrvfSpatReg', x, y)
  return(output)
}

order_l2norm <- function(x, y) {
  output = .Call('order_l2norm', PACKAGE = 'fdasrvfSpatReg', x, y)
  return(output)
}
