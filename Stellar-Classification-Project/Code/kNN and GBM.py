import pandas as pd
import seaborn as sns
from matplotlib import pyplot as plt
from sklearn.preprocessing import MinMaxScaler
from sklearn.neighbors import KNeighborsClassifier
from sklearn.ensemble import GradientBoostingClassifier
from sklearn.model_selection import train_test_split, cross_val_score
from sklearn.model_selection import GridSearchCV, RandomizedSearchCV
from sklearn.metrics import accuracy_score, precision_score, recall_score, f1_score
from sklearn.metrics import confusion_matrix
from sklearn.impute import SimpleImputer


df1 = pd.read_csv(
    "G:\My Drive\Spring 2024\EC503 Learning From Data\Final Project\EC503 Final Project\Datasets\star galaxy quasar csv.csv"
)
df2 = pd.read_csv(
    "G:\My Drive\Spring 2024\EC503 Learning From Data\Final Project\EC503 Final Project\Datasets\MK csv #1.csv"
)
df3 = pd.read_csv(
    "G:\My Drive\Spring 2024\EC503 Learning From Data\Final Project\EC503 Final Project\Datasets\encoded_SMOTE_dataset.csv"
)
df4 = pd.read_excel(
    "G:\My Drive\Spring 2024\EC503 Learning From Data\Final Project\EC503 Final Project\Datasets\Artificial Data Method 2.xlsx"
)


# Step 1:  Analyze & visualize the data
"""print("Exploring the Star/Galaxy/Quasar Dataset:")
print(df1.head())

print(pd.isna(df1))
print("Missing values per column:\n", df1.isnull().sum())

print("\n.info()")
df1.info()

print("\n.describe()")
print(df1.describe())

# Visualizations:
df1.hist(bins=20, figsize=(12, 8))
plt.suptitle("Star/galaxy/quasar feature histograms")
plt.show()

df1.boxplot(figsize=(12, 8))
plt.title("Star/galaxy/quasar feature boxplots")
plt.show()"""

"""print("Exploring the Six-Class Stellar Classification Dataset:")
print(df2.head())

print(pd.isna(df2))
print("Missing values per column:\n", df2.isnull().sum())

print("\n.info()")
df2.info()

print("\n.describe()")
print(df2.describe())

# Visualizations:
df2.hist(bins=20, figsize=(12, 8))
plt.suptitle("Six-class stellar classification feature histograms")
plt.show()

df2.boxplot(figsize=(12, 8))
plt.title("Six-class stellar classification stellar boxplots")
plt.show()"""


# Step 2:  Define the relevant features
X1 = df1[["alpha", "delta", "u", "g", "r", "i", "z", "redshift"]]
y1 = ["class"]  # galaxy, star, or quasar

X2 = df2[
    [
        "Temperature (K)",
        "Luminosity(L/Lo)",
        "Radius(R/Ro)",
        "Absolute magnitude(Mv)",
        "Color",
    ]
]
y2 = df2["Spectral Class"]

X3 = df3[
    [
        "Temperature (K)",
        "Luminosity (L/L0)",
        "Radius (R/R0)",
        "Absolute Magnitude",
        "Star Color",
    ]
]
y3 = df3["Spectral Class"]

X4 = df4[
    [
        "Temperature (K)",
        "Luminosity (L/L0)",
        "Radius (R/R0)",
        "Absolute Magnitude",
        "Star Color",
    ]
]
y4 = df4["Spectral Class"]

# Choose which dataset to run:
X, y = X3, y3


# Step 3:  Split the data into training & testing sets, then scale the data
X_train, X_test, y_train, y_test = train_test_split(
    X, y, test_size=0.25, random_state=42
)

imputer = SimpleImputer(strategy="mean")

# Fit the imputer on X_train and transform both X_train and X_test
X_train = imputer.fit_transform(X_train)
X_test = imputer.transform(X_test)

print("Shape of X_train:", X_train.shape)
print("Shape of X_test:", X_test.shape)
print("Shape of y_train:", y_train.shape)
print("Shape of y_test:", y_test.shape)

label_counts = y.value_counts()
print("Label counts (total):  " + str(label_counts))

scaler = MinMaxScaler()
X_scaled = scaler.fit_transform(X)

X_train_scaled = scaler.fit_transform(X_train)
X_test_scaled = scaler.transform(X_test)


# Step 4:  Implement k-nearest neighbors algorithm; test various parameters for best results
knn_classifier = KNeighborsClassifier()
knn_parameter_grid = {
    "n_neighbors": range(1, 21, 2),  # number of neighbors (k)
    "weights": ["uniform", "distance"],
    "metric": ["euclidean", "manhattan"],
}

knn_grid_search = GridSearchCV(
    estimator=knn_classifier,
    param_grid=knn_parameter_grid,
    cv=5,  # five-fold cross-validation
    scoring="accuracy",
    n_jobs=-1,  # use all available processors
)

knn_grid_search.fit(X_train, y_train)
best_knn = knn_grid_search.best_estimator_

print("Best kNN Parameters: ", knn_grid_search.best_params_)

y_pred_knn = best_knn.predict(X_test)

accuracy_knn = accuracy_score(y_test, y_pred_knn)
precision_knn = precision_score(y_test, y_pred_knn, average="weighted")
recall_knn = recall_score(y_test, y_pred_knn, average="weighted")
f1_knn = f1_score(y_test, y_pred_knn, average="weighted")

print("Best kNN Accuracy: ", accuracy_knn)
print("Best kNN Precision: ", precision_knn)
print("Best kNN Recall: ", recall_knn)
print("Best kNN F1 Score: ", f1_knn)

cv_folds = 5

cv_scores_knn = cross_val_score(
    best_knn, X_train, y_train, cv=cv_folds, scoring="accuracy"
)
mean_cv_score_knn = cv_scores_knn.mean()
std_cv_score_knn = cv_scores_knn.std()

print("Cross-validation scores for kNN: ", cv_scores_knn)
print("Mean CV score for kNN: ", mean_cv_score_knn)
print("Standard deviation of CV scores for kNN: ", std_cv_score_knn)

test_label_counts = y_test.value_counts()
# print("Label counts (y_test):  " + str(test_label_counts))

class_labels = ["A", "B", "F", "G", "K", "M", "O"]
confusion_matrix_knn = confusion_matrix(y_test, y_pred_knn)
print(confusion_matrix_knn)

plt.figure(figsize=(12, 9))
sns.heatmap(confusion_matrix_knn, annot=True, fmt="d", cmap="Blues", cbar=False)
plt.title("Confusion Matrix for kNN (Test Data)")
plt.xticks(ticks=[0.5, 1.5, 2.5, 3.5, 4.5, 5.5, 6.5], labels=class_labels)
plt.xlabel("Predicted Labels")
plt.yticks(ticks=[0.5, 1.5, 2.5, 3.5, 4.5, 5.5, 6.5], labels=class_labels)
plt.ylabel("True Labels")
plt.show()


# Step 5:  Implement gradient boosting algorithm; test various parameters for best results
gbm_classifier = GradientBoostingClassifier()
gbm_parameter_grid = {
    "n_estimators": [50, 100, 150],  # number of boosting stages
    "learning_rate": [0.05, 0.1, 0.2],
    "max_depth": [3, 4, 5],
    "min_samples_split": [2, 4, 6],  # minimum samples to split a node
    "min_samples_leaf": [1, 2, 4],  # minimum samples at a leaf node
}

gbm_random_search = RandomizedSearchCV(
    estimator=gbm_classifier,
    param_distributions=gbm_parameter_grid,
    cv=5,
    scoring="accuracy",
    n_iter=20,  # number of parameter combinations to evaluate
    random_state=42,
    n_jobs=-1,
)

gbm_random_search.fit(X_train, y_train)
best_gbm = gbm_random_search.best_estimator_

print("Best GBM Parameters: ", gbm_random_search.best_params_)

y_pred_gbm = best_gbm.predict(X_test)

accuracy_gbm = accuracy_score(y_test, y_pred_gbm)
precision_gbm = precision_score(y_test, y_pred_gbm, average="weighted")
recall_gbm = recall_score(y_test, y_pred_gbm, average="weighted")
f1_gbm = f1_score(y_test, y_pred_gbm, average="weighted")

print("Best GBM Accuracy: ", accuracy_gbm)
print("Best GBM Precision: ", precision_gbm)
print("Best GBM Recall: ", recall_gbm)
print("Best GBM F1 Score: ", f1_gbm)

cv_folds = 5

cv_scores_gbm = cross_val_score(
    best_gbm, X_train, y_train, cv=cv_folds, scoring="accuracy"
)
mean_cv_score_gbm = cv_scores_gbm.mean()
std_cv_score_gbm = cv_scores_gbm.std()

print("Cross-validation scores for GBM: ", cv_scores_gbm)
print("Mean CV score for GBM: ", mean_cv_score_gbm)
print("Standard deviation of CV scores for GBM: ", std_cv_score_gbm)

confusion_matrix_gbm = confusion_matrix(y_test, y_pred_gbm)

plt.figure(figsize=(12, 9))
sns.heatmap(confusion_matrix_gbm, annot=True, fmt="d", cmap="Blues", cbar=False)
plt.title("Confusion Matrix for GBM (Test Data)")
plt.xticks(ticks=[0.5, 1.5, 2.5, 3.5, 4.5, 5.5, 6.5], labels=class_labels)
plt.xlabel("Predicted Labels")
plt.yticks(ticks=[0.5, 1.5, 2.5, 3.5, 4.5, 5.5, 6.5], labels=class_labels)
plt.ylabel("True Labels")
plt.show()
