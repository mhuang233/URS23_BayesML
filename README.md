# URS23_BayesML

## PISA 2018 Contents
| File Name                                  | Description                  |
| ------------------------------------------ | ---------------------------- |
| **[pisa2018.BayesBook.csv]**               | The 2018 PISA dataset        |
| **[descriptive_stats.ipynb]**              | A Jupyter notebook for showing the descriptive statistics of a select set of variables from the PISA2018 dataset|
| **[simple_HLM.ipynb]**              | A Jupyter notebook with a simple hierarchical linear model for predicting PV1MATH scores|
| **[non-informative_priors_HLM.ipynb]**              | A Jupyter notebook with an HLM fit with specified non-informative priors|
| **[equations.tex]**              | A LaTeX file with some example equations|
| **[mixed_informative_priors.ipynb]**              | A Notebook with several models that use priors of various distribitions and mixed levels of information|
| **[mixing.ipynb]**              | A Notebook with multivariate mixing of Bayesian models|
| **[multivariate_optimization.ipynb]**              | Weighting and optimizing the mixing of HLMs|
| **[bart.ipynb]**              | Bayesian additive regression trees|


## Shortcomings of the Taweret Package
 - The multivariate mixing method has immutable and untrainable weights
 - The multi and bi variate mixing methods assume a one dimensional input space
    - Step mixing doesn't work with a different dimensionality
 - Is designed to work almost exculsively with BAND framework software and not other popular bayesian modeling packages
    - PYMC is likely the most popular python bayesian modeling package
    - It is worth noting that in python, ArviZ inference data is the output data of many well-established popular probabilistic models in python
 - Installation is inconvienent
    - BART is very difficult to setup, especially if using Windows
    - You can't simply install via a package manager and use out of the box
    - Especially difficult to use on Windows
    - 
## ECLS-K 2011 Contents
| File Name                                  | Description                  |
| ------------------------------------------ | ---------------------------- |
| **[ECLS-K-2011.csv]**               | The 2011 ECLS-K dataset        |
  


[pisa2018.BayesBook.csv]: https://github.com/mhuang233/URS23_BayesML/blob/main/PISA2018/pisa2018.BayesBook.csv
[descriptive_stats.ipynb]: https://github.com/mhuang233/URS23_BayesML/blob/main/PISA2018/descriptive_stats.ipynb
[simple_HLM.ipynb]: https://github.com/mhuang233/URS23_BayesML/blob/main/PISA2018/simple_HLM.ipynb
[non-informative_priors_HLM.ipynb]: https://github.com/mhuang233/URS23_BayesML/blob/main/PISA2018/non-informative_priors_HLM.ipynb
[equations.tex]: https://github.com/mhuang233/URS23_BayesML/blob/main/PISA2018/equations.tex
[mixed_informative_priors.ipynb]: https://github.com/mhuang233/URS23_BayesML/blob/main/PISA2018/mixed_informative_priors.ipynb
[mixing.ipynb]: https://github.com/mhuang233/URS23_BayesML/blob/main/PISA2018/mixing.ipynb
[multivariate_optimization.ipynb]: https://github.com/mhuang233/URS23_BayesML/blob/main/PISA2018/multivariate_optimization.ipynb
[bart.ipynb]: https://github.com/mhuang233/URS23_BayesML/blob/main/PISA2018/bart.ipynb

[ECLS-K-2011.csv]: https://github.com/mhuang233/URS23_BayesML/blob/main/ECLSK2011/ECLS-K-2011.csv
