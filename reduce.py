import umap

np.load('prime_factors.npz')['prime_factors']
embedding = umap.UMAP(metric='cosine', n_epochs=500).fit_transform(prime_factors)

np.savez('umap.npz', embedding=embedding)


