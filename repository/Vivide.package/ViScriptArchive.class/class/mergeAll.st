merging
mergeAll

	(self subclasses reject: [:c | c == self localArchive])
		do: [:archive | archive merge]
		displayingProgress: [:archive | 'Merging archives into profiles...', archive name].