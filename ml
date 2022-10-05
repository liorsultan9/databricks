import pandas as pd
sc = spark.sparkContext

# A CSV dataset is pointed to by path.
# The path can be either a single CSV file or a directory of CSV files
path = "/FileStore/tables/winequality_red.csv"

df3 = spark.read.option("delimiter", ";").option("header", True).csv(path)
df3.show()
df3.toPandas()
+++++++++++++++++++++++++++++++++++++++++++++++++++
import pandas as pd
a=pd.DataFrame({'pioi':['c','d','sss']})
b=pd.DataFrame({'lll':['33','555','777s']})
pd.concat([a,b],axis=0)

++++++++++++++++++++++++++++++++++++++++++
https://equitybee.udemy.com/course/databricks-essentials-for-spark-developers-azure-and-aws/learn/lecture/15979874#overview
