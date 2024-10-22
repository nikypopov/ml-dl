# Data Processing
import pandas as pd
import numpy as np

# Modelling
from sklearn.ensemble import RandomForestClassifier
from sklearn.metrics import accuracy_score, confusion_matrix, precision_score, recall_score, ConfusionMatrixDisplay
from sklearn.model_selection import RandomizedSearchCV, train_test_split
from scipy.stats import randint

# Tree Visualisation
from sklearn.tree import export_graphviz
from IPython.display import Image
import graphviz
from IPython.display import display
from sklearn.metrics import confusion_matrix
from sklearn.metrics import classification_report

############# Data With Variance Introduced #############

star_Data_1 = pd.read_csv("...\\SMOTE Data.csv") #Replace ... with directory to SMOTE data file

# Split the data into features (X) and target (y)
X = star_Data_1.drop(['Spectral Class'], axis=1)
y = star_Data_1['Spectral Class']

# Split the data into training and test sets
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2)

rf = RandomForestClassifier()
rf.fit(X_train, y_train)

y_pred = rf.predict(X_test)

accuracy = accuracy_score(y_test, y_pred)
print("Accuracy Using SMOTE Data:", accuracy)

print(classification_report(y_test, y_pred))
 
############# Data Using Online Ranges #############

star_Data_2 = pd.read_csv("...\\Online Gen Stars.csv") #Replace ... with directory to Online Gen Stars data file

# Split the data into features (X) and target (y)
X = star_Data_2.drop(['Spectral Class','Star Color Strings'], axis=1)
y = star_Data_2['Spectral Class']

# Split the data into training and test sets
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2)

rf = RandomForestClassifier()
rf.fit(X_train, y_train)

y_pred = rf.predict(X_test)

accuracy = accuracy_score(y_test, y_pred)
print("Accuracy Using Online Ranges For Data:", accuracy)

print(classification_report(y_test, y_pred))

############# Data Using Kaggle Dataset Method 1 #############

star_Data_3 = pd.read_csv("...\\MK csv #1.csv") #Replace ... with directory to MK csv #1 data file

# Split the data into features (X) and target (y)
X = star_Data_3.drop(['Spectral Class','Star color','Star type'], axis=1)
y = star_Data_3['Spectral Class']

# Split the data into training and test sets
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2)

rf = RandomForestClassifier()
rf.fit(X_train, y_train)

y_pred = rf.predict(X_test)

accuracy = accuracy_score(y_test, y_pred)
print("Accuracy When Using MK #1:", accuracy)

print(classification_report(y_test, y_pred))

############# Data Using Kaggle Dataset Method 2 #############

star_Data_4 = pd.read_csv("...\\MK csv #2.csv") #Replace ... with directory to MK csv #2 data file

# Split the data into features (X) and target (y)
X = star_Data_4.drop(['Spectral Class','Star color','Star type'], axis=1)
y = star_Data_4['Spectral Class']

# Split the data into training and test sets
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2)

rf = RandomForestClassifier()
rf.fit(X_train, y_train)

y_pred = rf.predict(X_test)

accuracy = accuracy_score(y_test, y_pred)
print("Accuracy When Using MK #2:", accuracy)

print(classification_report(y_test, y_pred))

############# Data Using Kaggle Dataset Method 3 #############

star_Data_5 = pd.read_csv("...\\MK csv #3.csv") #Replace ... with directory to MK csv #3 data file

# Split the data into features (X) and target (y)
X = star_Data_5.drop(['Spectral Class'], axis=1)
y = star_Data_5['Spectral Class']

# Split the data into training and test sets
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2)

rf = RandomForestClassifier()
rf.fit(X_train, y_train)

y_pred = rf.predict(X_test)

accuracy = accuracy_score(y_test, y_pred)
print("Accuracy When Using MK #3:", accuracy)

print(classification_report(y_test, y_pred))

############# Data Using Kaggle Dataset Method 4 #############

star_Data_6 = pd.read_csv("...\\Kaggle Gen Stars.csv") #Replace ... with directory to Kaggle Gen Stars data file

# Split the data into features (X) and target (y)
X = star_Data_6.drop(['Spectral Class','Star Color Strings'], axis=1)
y = star_Data_6['Spectral Class']

# Split the data into training and test sets
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2)

rf = RandomForestClassifier()
rf.fit(X_train, y_train)

y_pred = rf.predict(X_test)

accuracy = accuracy_score(y_test, y_pred)
print("Accuracy When Using Kaggle Generated Data:", accuracy)

print(classification_report(y_test, y_pred))

