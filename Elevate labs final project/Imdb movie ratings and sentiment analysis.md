# 🎬 IMDB Movie Rating & Sentiment Analysis

## 🧠 Project Overview

This project performs **Sentiment Analysis** on **IMDB movie reviews** using various **machine learning algorithms**.
The dataset includes text phrases labeled as **positive (1)** or **negative (0)**, allowing us to classify the sentiment of movie reviews and compare the performance of multiple models.

---

## 📂 Dataset Description

The dataset consists of **tab-separated files** (`train.tsv`, `test.tsv`) containing IMDB movie phrases parsed using the Stanford Parser.

* Each record includes:

  * **PhraseId** – Unique identifier for each phrase
  * **SentenceId** – Groups phrases from the same sentence
  * **Phrase** – The actual text data
  * **Sentiment** – Sentiment label

    * `0`: Negative
    * `1`: Positive

> Example dataset source: [Kaggle IMDB Movie Rating Sentiment Dataset](https://www.kaggle.com)

---

## 🎯 Objective

* Perform **data exploration** and **text preprocessing**
* Build and evaluate **multiple classification models**
* Compare performance metrics and identify the best model
* Visualize **insights from data and results**

---

## 🧩 Step-by-Step Process

### **1️⃣ Data Exploration**

* Imported essential libraries such as `pandas`, `numpy`, `seaborn`, `nltk`, `scikit-learn`, and `xgboost`.
* Checked for missing values, dataset dimensions, and sentiment distribution.
* Visualized class balance using bar plots.
* Generated **word clouds** for both positive and negative sentiments to highlight frequent words.

### **2️⃣ Data Preprocessing**

* Removed punctuation, stopwords, and special symbols.
* Converted all text to lowercase.
* Applied **stemming** using `PorterStemmer` to normalize words.
* Tokenized the text using **Bag-of-Words (BoW)** and **TF-IDF Vectorization**.

### **3️⃣ Feature Engineering**

* Converted the processed text into numerical features using:

  * **CountVectorizer**
  * **TfidfVectorizer**
* Scaled features using `StandardScaler` for consistent model training.

### **4️⃣ Model Training**

Implemented multiple algorithms to compare accuracy and robustness:

* **Naive Bayes (BernoulliNB)**
* **Support Vector Machine (SVC)**
* **Decision Tree Classifier**
* **K-Nearest Neighbors (KNN)**
* **XGBoost Classifier**

Each model was trained on the vectorized text features, and hyperparameter tuning was applied where applicable.

### **5️⃣ Model Evaluation**

* Evaluated models using:

  * Accuracy
  * Precision
  * Recall
  * F1-score
  * Confusion Matrix
* Plotted performance comparisons for all models.

### **6️⃣ Visualization**

* **Word Clouds** to show most frequent words in positive vs. negative reviews.
* **Bar charts** for sentiment distribution.
* **Confusion matrices** for model evaluation.

### **7️⃣ Results & Insights**

| Model         | Accuracy                                             | Key Observation |
| ------------- | ---------------------------------------------------- | --------------- |
| Naive Bayes   | High performance on small text data, fast & simple   |                 |
| SVM           | Excellent accuracy, effective on text classification |                 |
| Decision Tree | Easy to interpret, slightly prone to overfitting     |                 |
| KNN           | Moderate accuracy, high computation cost             |                 |
| XGBoost       | Strongest performance overall with balanced metrics  |                 |

**✅ Best Model:** `XGBoost Classifier` – achieved the highest overall accuracy and balanced precision/recall.

---

## 🧪 Example Code Snippet

```python
from sklearn.feature_extraction.text import TfidfVectorizer
from sklearn.model_selection import train_test_split
from xgboost import XGBClassifier
from sklearn.metrics import accuracy_score, classification_report

# Vectorization
vectorizer = TfidfVectorizer(max_features=5000)
X = vectorizer.fit_transform(df['clean_text'])
y = df['Sentiment']

# Split Data
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

# Model
xgb = XGBClassifier()
xgb.fit(X_train, y_train)

# Evaluation
pred = xgb.predict(X_test)
print("Accuracy:", accuracy_score(y_test, pred))
print(classification_report(y_test, pred))
```

---

## 🧰 Libraries Used

* **Python** 3.x
* **Pandas**, **NumPy** – Data handling
* **Matplotlib**, **Seaborn**, **WordCloud** – Visualization
* **Scikit-learn** – ML algorithms & metrics
* **XGBoost** – Gradient boosting model
* **NLTK** – Natural Language Processing
* **TQDM** – Progress tracking

---

## 📊 Results Visualization

* Sentiment distribution graphs
* Word clouds for frequent words
* Model performance comparison chart
* Confusion matrix heatmaps

---

## 🚀 Future Improvements

* Use **deep learning** (e.g., LSTM, BERT) for better accuracy
* Perform **hyperparameter optimization** using `GridSearchCV`
* Build a **Streamlit web app** for live sentiment predictions
* Integrate real-time IMDB API for fetching new reviews

---

## 📝 Conclusion

This project demonstrates how **Natural Language Processing (NLP)** and **machine learning** can analyze and classify movie review sentiments effectively.
Among all tested models, **XGBoost** delivered the best accuracy and generalization.

---

## 📁 Folder Structure (recommended)

```
imdb-sentiment-analysis/
├── data/
│   ├── train.tsv
│   ├── test.tsv
├── notebooks/
│   └── imdb-movie-rating-sentiment-analysis.ipynb
├── models/
│   └── xgb_model.pkl
├── README.md
└── requirements.txt
```

---

## 👩‍💻 Author

**Swetha Kaleri**
*Data Analyst |Artificial Intelligance  Enthusiast*

📧 Contact: *www.linkedin.com/in/swetha-kaleri-38529732b*
💻 Tools used: Python, Jupyter Notebook, Scikit-learn, XGBoost


