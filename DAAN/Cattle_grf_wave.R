install.packages("grf")
library(grf)

#Delete this variable since we are using the log transformed one

cattle_df_GRF_wave$cs_cs_diff_post_cattle <- NULL

#Deal with the categorical values
formula <- as.formula("~ .")

# One-hot encoding
X <- model.matrix(formula, data = cattle_df_GRF_wave[, setdiff(names(cattle_df_GRF_wave), "cs_diff_log")])

X <- X[, -1]

Y <- cattle_df_GRF_wave$cs_diff_log


# Hyperparameter tuning
rf_model <- regression_forest(
  X, Y,
  tune.parameters = "all",       
  tune.num.trees = 100,          
  tune.num.reps = 1000,          
  tune.num.draws = 1000,        
  num.trees = 5000
)


print(rf_model$tuning.output)

oob_preds <- predict(rf_model)$predictions

# Calculate the R2 score
r2_cattle_wave <- 1 - sum((Y - oob_preds)^2) / sum((Y - mean(Y))^2)

# Calculate the mae
mae_cattle_wave <- mean(abs(Y - oob_preds))

# Calculate the RMSE
rmse_cattle_wave <- sqrt(mean((Y - oob_preds)^2))

# Results
cat(paste0("- R²-score: ", round(r2_cattle_wave, 3), "\n",
           "- MAE: ", round(mae_cattle_wave, 3), "\n",
           "- RMSE: ", round(rmse_cattle_wave, 3), "\n"))

residuals <- Y - oob_preds

hist(residuals,
     breaks = 30,
     col = "skyblue", border = "white",
     main = "Verdeling van de residuen",
     xlab = "Residuen")
abline(v = 0, col = "red", lwd = 2)

varimp <- variable_importance(rf_model)
names(varimp) <- colnames(X)
barplot(sort(varimp, decreasing = TRUE),
        las = 2, col = "steelblue",
        main = "Variable Importance",
        ylab = "Importance Score")





