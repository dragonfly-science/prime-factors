import numpy as np
import scipy.sparse
import umap

prime_factors = np.load('prime_factors.npz')['prime_factors']
embedding = umap.UMAP(metric='cosine', n_epochs=500).fit_transform(prime_factors)

np.savez('umap.npz', embedding=embedding)


