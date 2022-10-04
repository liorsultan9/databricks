import pandas as pd
sc = spark.sparkContext

# A CSV dataset is pointed to by path.
# The path can be either a single CSV file or a directory of CSV files
path = "/FileStore/tables/winequality_red.csv"

df3 = spark.read.option("delimiter", ";").option("header", True).csv(path)
df3.show()
df3.toPandas()
