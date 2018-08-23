import numpy as np
import matplotlib
matplotlib.use('Agg')
from matplotlib import pyplot as plt

embedding = np.load('umap.npz')['embedding']


fig = plt.figure(figsize=(8, 8))
fig.patch.set_facecolor('black')
plt.scatter(embedding[:, 0], embedding[:, 1], marker='o', 
    s=0.005, alpha=0.1, edgecolor='', c=np.arange(embedding.shape[0]), cmap="magma")

plt.axis("off")

plt.savefig("primes_umap_1e6_8k_smaller_pts.png", dpi=1000, facecolor='black')

