import pandas as pd

df = pd.read_csv("Cleaned_Superstore.csv")

print("Rows:", df.shape[0])
print("Columns:", df.shape[1])

print("\nTotal Sales:", round(df["Sales"].sum(), 2))
print("Total Profit:", round(df["Profit"].sum(), 2))
print("Total Orders:", df["Order ID"].nunique())
print("Total Customers:", df["Customer ID"].nunique())
