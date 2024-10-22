### Link to Project Google Drive: https://drive.google.com/drive/folders/115hQhzC4dHJ2099osLNf07JztYB4jPtm?usp=sharing

### Link to Original Data: https://www.kaggle.com/datasets/deepu1109/star-dataset/data

## How to Run each Script:

### ARTIFICIAL DATASET 1: 

Download Random_Star_Example_Generator_1.m. Open the file then press “Run”. No packages or toolboxes are needed to run this script. The resulting output will be a randomly generated series of stars for each stellar classification.

### ARTIFICIAL DATASET 2: 

Download Random_Star_Example_Generator_2.m. Open the file then press “Run”. No packages or toolboxes are needed to run this script. The resulting output will be a randomly generated series of stars for each stellar classification.

### SMOTE.pynb: 

The SMOTE script is a short script used to generate synthetic data. Simply run the two code cells. Ensure you have saved the project drive (including the /Datasets folder) to your google drive. Mount your drive to a colab session using the first code cell.  The script is set up for the project directory structure. Note: if you change the names of any files in the project drive, you may need to edit the file_path variable.

### SVMFinal.pynb: 

Ensure you have saved the project drive (including the /Datasets folder) to your google drive. Mount your drive to a colab session using the first code cell. Comment out the correct path lines in the first and second code cells according to the instructions in the script. (Note: if you change the names of any files in the project drive, you may need to edit the file_path variable.) After, you can proceed to run the code cell by cell. There are clear comments and notes describing the functionality. Also note there is an EXTRA section the SVMFinal.pynb which has the code necessary to generate the final histograms for CCR and F1. The values must be entered manually in the data variable. 

### RF: 

Download python script labeled “Random Forest” along with each data set within the “Random Forest” folder. Upon opening up the script, make sure you have the latest versions of pandas, numpy, sklearn, IPython, and scipy installed. After doing so, follow the directions on each read_csv command of replacing the … with the proper directory to each .csv file. These are on lines 21, 42, 63, 84, 105, and 126. The directories should follow the example of “D:\\Learning From Data\\Final Project\\SMOTE Data.csv”. Once done for each of the stated lines, the code should be able to be run correctly. Any issues means an incorrect file path or the incorrect version of the previously stated packages are installed. The output of this script will be the accuracy of the  Random Forest algorithm followed by f1-core metrics for each dataset.


### kNN and GBM.py: 

To run this file, first choose the dataset by changing the path to df1, df2, df3, or df4
To run either “MK csv #1”, “MK csv #2,” or “MK csv #3,” simply change the number in the path to df2 (lines 17-19) and change X, y to = X2, y2 (line 110).
To run either “Artificial Data Method 1” or “Artificial Data Method 2”, simply change the number in the path to df4 (lines 23-24) and change X, y to = X4, y4 (line 110).
To run “encoded_SMOTE_dataset” simply change X, y to = X3, y3 (line 110).
Once you select the correct dataset and run the file, all results for kNN and GBM will display automatically (GBM has a run time of ~30 seconds).

