# Predicting Household Welfare Outcomes Using Observable Socio-Economic Characteristics

This README file will help navigate this repository. This Github comprises all scripts and models used to obtain results on the dataset.

Following is a short explanation of each file:

### Model Notebook Descriptions

| File Name                                      | Description |
|-----------------------------------------------|-------------|
| `Bayesian_cattle.ipynb`                       | Implements a Bayesian regression model to predict welfare outcomes for cattle-owning households. |
| `Bayesian_goat.ipynb`                         | Implements a Bayesian regression model to predict welfare outcomes for goat-owning households. |
| `Cattle_grf_wave.R`                           | R script for running Generalized Random Forests (GRF) on cattle data. |
| `Data_Manipulation_final.ipynb`               | Prepares and cleans the dataset, including merging waves and engineering key features. |
| `GRF_cattle_wave_id_final.ipynb`              | Notebook used to prepare the data for the R-script 'Cattle_grf_wave.R'|
| `GRF_goat_wave_id_final.ipynb`                | Notebook used to prepare the data for the R-script 'goat_GRF_wave.R' |
| `Goat_GRF_wave.R`                             | R implementation of GRF for goat data, mirroring the cattle workflow. |
| `Lasso_cattle_wave_id_final.ipynb`            | Performs LASSO regression to identify significant predictors of welfare among cattle-owning households. |
| `Lasso_goat_wave_id_final.ipynb`              | Performs LASSO regression to identify significant predictors of welfare among goat-owning households. |
| `TabTransformers_cattle_wave_id_final.ipynb`  | Trains TabTransformer models on cattle data to explore deep learning approaches to welfare prediction. |
| `TabTransformers_goat_wave_id_final.ipynb`    | Trains TabTransformer models on goat data to explore deep learning approaches to welfare prediction. |

These notebooks all work seperately. The notebook 'Data_Manipulation_final.ipynb' should be considered first as it prepares and shapes the data for the ML-models.
The notebooks can be run top to bottom in order to recreate the results. For further questions about the notebooks feel free to send in inquiries.
