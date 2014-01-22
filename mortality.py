import numpy as np
import matplotlib.pyplot as plt

#data from Heilman1972 x=year of harvest y= % survivorship
heiData=np.array([[2,92],[4,86],[4.66,83]])
#data from Strong 1989
strData={'1-yr':np.array([100,100,100,66,6]),\
         '2-yr':np.array([100,100,53,6,np.nan]),\
         '3-yr':np.array([100,93,70,np.nan,np.nan]),\
         '5-yr':np.array([100,80,np.nan,np.nan,np.nan]),\
         '7-yr':np.array([100,80,np.nan,np.nan,np.nan])}

