# machinelearning-NBA team roster construction

Thanks for checking out our repository. As you can see in the root directory, 6 files of code are presented and their functions will be explained later. First, let's talk about the data. The folder Raw Data Set contains all the data directly pulled from NBA official website. The folder Generated Data Set, on the other hand, containd all the data we generated in the process. Most of the data are generated using the code, however, some data is generated using the tools in Microsoft Excel. Under the directory Generated Data Set/Player Performance Data, the tables with the name "_all" are generated from the row performance data by concatenating the corresponding tables. These 5 tables ending with "_all" have the same row index (player names) and different columns (featuers). The file 'all_data.xlsx' is the table containing all the columns in these files with the same row index. The "all_data_manual_selected.xlsx" is generated from "all_data.xlsx" by choosing several features manually. Except for these files, all the other data can be generated by running the codes. When running the codes, please change the path accordingly.

This is the framework for our study:

![My Image](Framework.jpg)

Each file's purpose and products are listed below:

1) data_scrape.ipynb is the file containing the process of scraping data from NBA official website. The products are all the data sets we need for this project in Excel table form.

2) PCA.ipynb is the file of the code running the principle analysis and gives the PCA matrix and transformed data.

3) Clustering.ipynb is the file of the code running the clustering process and gives the results of the clusters using different alrorithms and diffrent data sets. The plots that evaluate the algorithms are not exported but can be found by running the code. 

4) Neural Network.ipynb is the file of the code fitting the neural network model used in the framework. The results are not exported, but can be found by running the code. 

5) player_rate.r gives the code that gives the unweighted rates of each player in each game. rate.ipynb shows the code that gives the players different weights and gives the table that shows the rate of different players under each type of weight.

6) Final Players Choose.ipynb shows the code that choose players for the final roster. The result is not exported but can be found by running the code.  
