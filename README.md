Getting and Cleaning Data Course - Coursera - Johns Hopkins University

The run_analysis.R assumes that the required text files are in the current working directory.

The R script performs the following:

1) Imports the necessary txt files as data frames.
2) Binds the observations, subjects and activities from the train and test data experiments to create one "large dataset".
3) Name the columns of the large dataset.
4) Identify which columns refer to mean and standard deviation observations.
5) Extract the relative columns from large.dataset to final.dataset.
6) Change the "Activity" column from an integer to a qualitative description.
7) Create a tidy dataset that summarizes the mean of the observations by subject and activity.
