import numpy as np
import matplotlib.pyplot as plt
import matplotlib.dates as mdates

year, births = np.loadtxt(brfile, unpack=True, delimiter=",")

plt.plot_date(x=year, y=births, fmt="r-")
plt.grid(True)
plt.savefig("birthrate-py.svg")

