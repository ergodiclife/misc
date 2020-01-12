#!C:/Users/Chris/Anaconda3/python.exe
#
# http://people.duke.edu/~ccc14/sta-663-2019/index.html
import pandas as pd

df = pd.read_csv('https://bit.ly/2RIw7Ig', index_col=0)

### Basic operations
df.columns
df.index
df.shape
df.dtypes
df.head(5)
df.tail(5)
df.sample(5)

