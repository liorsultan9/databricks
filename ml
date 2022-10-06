import pandas as pd
import seaborn as sns
sc = spark.sparkContext

# A CSV dataset is pointed to by path.
# The path can be either a single CSV file or a directory of CSV files
path = "/FileStore/tables/winequality_red.csv"
path1 = "/FileStore/tables/winequality_white.csv"

df3 = spark.read.option("delimiter", ";").option("header", True).csv(path)
df4 = spark.read.option("delimiter", ";").option("header", True).csv(path1)


a=df3.toPandas()
a['is red']=1
b=df4.toPandas()
b['is red']=0
concat1=pd.concat([a,b])
concat1
sns.displot(data=concat1.quality.sort_values())
+++++++++++++++++++++++++++++++++++++++++++++++++++
import pandas as pd
a=pd.DataFrame({'pioi':['c','d','sss']})
b=pd.DataFrame({'lll':['33','555','777s']})
pd.concat([a,b],axis=0)

++++++++++++++++++++++++++++++++++++++++++
https://equitybee.udemy.com/course/databricks-essentials-for-spark-developers-azure-and-aws/learn/lecture/15979874#overview
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
import pandas as pd
import seaborn as sns
sc = spark.sparkContext

# A CSV dataset is pointed to by path.
# The path can be either a single CSV file or a directory of CSV files
path = "/FileStore/tables/winequality_red.csv"
path1 = "/FileStore/tables/winequality_white.csv"

df3 = spark.read.option("delimiter", ";").option("header", True).csv(path)
df4 = spark.read.option("delimiter", ";").option("header", True).csv(path1)


a=df3.toPandas()
b=df4.toPandas()
concat1=pd.concat([a,b])
sns.displot(data=concat1.quality.sort_values())
