import os
import pickle
os.chdir('/home/ahin017/files.fos/openapi/seminar/conduit-seminar2014/pipelines/birthrate_python/modules/brplot-py')
brfile = '/home/ahin017/files.fos/openapi/seminar/conduit-seminar2014/pipelines/birthrate_python/modules/birthrate/birthrate.csv'
import numpy as np
import matplotlib.pyplot as plt
import matplotlib.dates as mdates

year, births = np.loadtxt(brfile, unpack=True, delimiter=",")

plt.plot_date(x=year, y=births, fmt="r-")
plt.grid(True)
plt.savefig("birthrate-py.svg")


