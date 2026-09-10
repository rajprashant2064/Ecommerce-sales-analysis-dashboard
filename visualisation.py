import pandas as pd
import matplotlib.pyplot as plt

# Load dataset
df = pd.read_csv("Dataset/Cleaned_Superstore.csv")

# -----------------------------
# Sales by Categoryimport pandas as pd
import matplotlib.pyplot as plt

df = pd.read_csv("Cleaned_Superstore.csv")

sales_category = df.groupby("Category")["Sales"].sum()

plt.figure(figsize=(8, 5))
sales_category.plot(kind="bar")
plt.title("Sales by Category")
plt.ylabel("Sales")
plt.tight_layout()
plt.savefig("Sales_By_Category.png")
plt.show()

profit_category = df.groupby("Category")["Profit"].sum()

plt.figure(figsize=(8, 5))
profit_category.plot(kind="bar")
plt.title("Profit by Category")
plt.ylabel("Profit")
plt.tight_layout()
plt.savefig("Profit_By_Category.png")
plt.show()

sales_region = df.groupby("Region")["Sales"].sum()

plt.figure(figsize=(8, 5))
sales_region.plot(kind="bar")
plt.title("Sales by Region")
plt.ylabel("Sales")
plt.tight_layout()
plt.savefig("Sales_By_Region.png")
plt.show()

monthly_sales = df.groupby("Month_Number")["Sales"].sum()

plt.figure(figsize=(10, 5))
monthly_sales.plot(kind="line", marker="o")
plt.title("Monthly Sales Trend")
plt.ylabel("Sales")
plt.xlabel("Month")
plt.tight_layout()
plt.savefig("Monthly_Sales_Trend.png")
plt.show()
# -----------------------------
sales_category = df.groupby("Category")["Sales"].sum()

plt.figure(figsize=(8,5))
sales_category.plot(kind="bar")
plt.title("Sales by Category")
plt.ylabel("Sales")
plt.tight_layout()
plt.savefig("Sales_By_Category.png")
plt.show()

# -----------------------------
# Profit by Category
# -----------------------------
profit_category = df.groupby("Category")["Profit"].sum()

plt.figure(figsize=(8,5))
profit_category.plot(kind="bar")
plt.title("Profit by Category")
plt.ylabel("Profit")
plt.tight_layout()
plt.savefig("Profit_By_Category.png")
plt.show()

# -----------------------------
# Sales by Region
# -----------------------------
sales_region = df.groupby("Region")["Sales"].sum()

plt.figure(figsize=(8,5))
sales_region.plot(kind="bar")
plt.title("Sales by Region")
plt.ylabel("Sales")
plt.tight_layout()
plt.savefig("Sales_By_Region.png")
plt.show()

# -----------------------------
# Monthly Sales Trend
# -----------------------------
monthly_sales = df.groupby("Month_Number")["Sales"].sum()

plt.figure(figsize=(10,5))
monthly_sales.plot(kind="line", marker="o")
plt.title("Monthly Sales Trend")
plt.ylabel("Sales")
plt.xlabel("Month")
plt.tight_layout()
plt.savefig("Monthly_Sales_Trend.png")
plt.show()
