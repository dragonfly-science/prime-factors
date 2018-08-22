import numpy as np
from matplotlib import pyplot as plt

embedding = np.load('umap.npz')['embedding']

fig = plt.figure(figsize=(8,8))
fig.patch.set_facecolor('black')
plt.scatter(embedding[:,0], embedding[:,1], marker='o', s=0.005, edgecolor='',
            c=np.arange(n), cmap="magma")

plt.axis("off")

plt.savefig("primes_umap_1e6_16k_smaller_pts.png", dpi=2000, facecolor='black')

