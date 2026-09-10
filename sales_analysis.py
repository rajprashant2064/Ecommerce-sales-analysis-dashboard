import pandas as pd

# Load Dataset
df = pd.read_csv("Dataset/Cleaned_Superstore.csv")

print("Rows:", df.shape[0])
print("Columns:", df.shape[1])

# KPIs
print("\nTotal Sales:", round(df["Sales"].sum(), 2))
print("Total Profit:", round(df["Profit"].sum(), 2))
print("Total Orders:", df["Order ID"].nunique())