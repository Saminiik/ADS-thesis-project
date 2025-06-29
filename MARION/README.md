This README contains instructions on how to navigate the files uploaded in this repository.

Besides the poster ("Thesis_Poster_Marion_Späth_2772981") and thesis report ("ADS_Thesis_Marion_Späth_2772981.pdf"), the Github comprises all scripts, models, and processed summary datasets (i.e., the raw and manipulated data is not uploaded but can be obtained by running the scripts).

To replicate and understand the analyses, work through the files in the "Scripts" folder in the following order:
1. Data_Manipulation.ipynb -> contains the code needed for the data manipulation and pre-processing. At the end of this file, you will get dataset in csv and xlsx format that are then used in the subsequent scripts.
2. Descriptive_Exploratory_Analysis.ipynb -> contains visualisations  and descriptive summary statistics to get a better understanding of the data.
3. FAMD_Markdown.Rmd & FAMD_Markdown.hmtl -> contains code for the FAMD. FAMD was also explored in Python ("PCA_FAMD.ipynb"), but was ultimately not used for the paper as its implementation is not ideal compared to the libraries in R (elaborated more in the scripts).
4. ML PREPARATIONS.Rmd / ML PREPARATIONS.html -> contains code for the preprocessing of the dependent variable (RE models to extract residuals) and splits cattle and goat datasets each into train and test data.
5. without_trust_models folder: CatBoost_Cattle.ipynb / CatBoost_Goat.ipynb, Elastic_Net_Cattle.ipynb / Elastic_Net_Goat.ipynb, RF_Cattle.ipynb / RF_Goat.ipynb, SVM_Cattle.ipynb / SVM_Goat.ipynb -> contains code and explanations for the respective models. Includes a second version in which education is treated numerically. The latter have been included in the appendix of the paper (due to time limitations, those models were not repeated with the new trust variables). The models were run before the trust composite score variable was added towards the end of the thesis period.
6. Investigation_new_trust_and_ratio_variable -> contains code that investigates the newly added trust and the updated ratio variables.
7. with_trust_models folder: CatBoost_Cattle.ipynb / CatBoost_Goat.ipynb, Elastic_Net_Cattle.ipynb / Elastic_Net_Goat.ipynb, RF_Cattle.ipynb / RF_Goat.ipynb, SVM_Cattle.ipynb / SVM_Goat.ipynb -> contain code and explanations for the respective models. The results were reported in the main text of the thesis.
8. feature_importances.ipynb ( both in with_trust_models folder and without_trust_models folder) -> contains code to visualise feature importances across models.
9. Quant_Reg_Cattle.ipynb -> contains code for the Quantile Regression discussed in the Discussion section of the thesis.

The Processed Datasets folder contains csv files with the aggregated feature importances per model which are used in the feature_importances.ipynb scripts as well as the SUMMARY_STATISTICS_PROCESSED_APPENDIX.xlsx which contains the summary statistics reported in the appendix.
The Pickled Models folder contains the models that can be imported in the respective model scripts so that the models do not have to be re-run. m1 stands for education as categorical information, m2 stands for education as a numeric measure. 


