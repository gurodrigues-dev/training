import pandas as pd

# Step. 1
table = pd.read_excel("Vendas.xlsx")
print(table)

# Step. 2
total_invoicing = table["Valor Final"].sum()
print(f"\nAmount invoiced in December: {total_invoicing}")

# Step. 3
billing_per_store = table[["ID Loja", "Valor Final"]].groupby("ID Loja").sum()
print(f"\nAmount collected by each store stored: {billing_per_store}")
# Note that one "franchisee" is earning more than the others, why? Let's analyze the products. 

# Step. 4
billing_store_product = table[["ID Loja", "Produto", "Valor Final"]].groupby(["ID Loja", "Produto"]).sum()
print(f"\nAmount collected under each product: {billing_store_product}")

# Step. 5

# It is then possible to observe after these lines of code that a product stands out regarding billing and is only distributed to one store.
# To increase the sales of this distributor, it would be sending this same products to other stores.