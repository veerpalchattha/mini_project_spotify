# 🎵 Spotify Top 50 — Data Analysis Project

![Spotify Banner](https://images.unsplash.com/photo-1511671782779-c97d3d27a1d4?auto=format&fit=crop&w=1350&q=80)

---

# 📑 **Table of Contents**
- [1. Project Overview](#1-project-overview)
- [2. Objectives](#2-objectives)
- [3. Dataset](#3-dataset)
- [4. Data Processing](#4-data-processing)
- [5. Database Design](#5-database-design)
- [6. Hypotheses](#6-hypotheses)
- [7. Visualizations](#7-visualizations)
- [Conclusion](#conclusion)

---

# 🛠️ **Tech Stack & Tools**

![Python](https://img.shields.io/badge/Python-3.10-blue?logo=python&logoColor=white)
![Pandas](https://img.shields.io/badge/Pandas-Data%20Analysis-150458?logo=pandas)
![MySQL](https://img.shields.io/badge/MySQL-Database-4479A1?logo=mysql&logoColor=white)
![Jupyter](https://img.shields.io/badge/Jupyter-Notebook-F37626?logo=jupyter)
![Matplotlib](https://img.shields.io/badge/Matplotlib-Visualization-00aaff)
![Seaborn](https://img.shields.io/badge/Seaborn-Statistical%20Plots-53ba83)

---

# 1️⃣ **Project Overview**

This project investigates Spotify's Global Top 50 tracks to understand the characteristics that drive song popularity.
Through database design, statistical analysis, and visualization, we explore relationships between genre, danceability, and popularity.

---

# 2️⃣ **Objectives**

- Clean and standardize the Spotify Top 50 dataset
- Construct a normalized relational database in MySQL
- Test two hypotheses regarding genre popularity and danceability
- Use Python visualizations to support or reject the hypotheses
- Present analytical conclusions in a structured and academic manner

---

# 3️⃣ **Dataset**

**Source:** Kaggle – Spotify Top 50 Dataset  
The dataset contains 50 tracks with attributes including:

- Track and artist names
- Genre and genre groups
- Popularity score
- Danceability, Energy, BPM, Loudness, Valence, etc.

---

# 4️⃣ **Data Processing**

Data cleaning included:

- Normalizing genre names and generating `genre_group`
- Removing accents for MySQL compatibility
- Handling missing values
- Assigning unique IDs for artists and songs
- Exporting three final tables: `Artists`, `Songs`, `Popularity`

These steps ensured consistency and referential integrity across the database.

---

# 5️⃣ **Database Design**

A normalized schema was designed to avoid redundancy and support efficient querying.

### 📌 **Artists Table**  
Contains unique artist names (38 in total)

### 📌 **Songs Table**  
Stores detailed musical attributes and links each song to an artist

### 📌 **Popularity Table**  
Stores chart rank and popularity score, linked 1–to–1 with the Songs table

The final schema supports strong relational integrity via foreign keys.

---

# 6️⃣ **Hypotheses**

### **Hypothesis 1**  
⭐ *The most popular songs belong to Pop-related genres.*

Analysis approach:
- Compute average popularity by `genre_group`
- Examine genre representation within the Top 20 songs

---

### **Hypothesis 2**  
⭐ *Songs with higher danceability tend to be more popular.*

Analysis approach:
- Categorize danceability into Low / Medium / High
- Compare average popularity across groups
- Examine whether the most danceable songs also rank highly

---

# 7️⃣ **Visualizations**

Four visualizations were created:

### 🎨 1. Average Popularity by Genre Group  
Shows trends in genre-level popularity.

### 🎨 2. Genre Distribution in the Top 20 Songs  
Reveals whether Pop dominates the highest-ranked tracks.

### 🎨 3. Popularity by Danceability Level  
Illustrates how danceability categories compare in popularity.

### 🎨 4. Popularity of the Top 10 Most Danceable Songs  
Highlights whether extremely danceable songs also reach high popularity.

---

# 🧠 **Conclusion**

This analysis provides several notable insights into the characteristics of Spotify’s Top 50 tracks:

### ✔ Pop is the most consistently popular genre.  
Pop and Dance Pop exhibit the highest average popularity scores and dominate the Top 20 rankings.  
This offers strong support for **Hypothesis 1**.

### ✔ Higher danceability generally correlates with higher popularity.  
Songs with medium to high danceability tend to achieve better popularity scores.  
However, outliers exist—indicating that other musical features also influence popularity.  
This partially supports **Hypothesis 2**.

### ✔ Popular songs often share combined features.  
The most successful tracks tend to blend **Pop genre identity** with **moderate-to-high danceability**, contributing to strong listener appeal.

---

# 🎉 Thank You
