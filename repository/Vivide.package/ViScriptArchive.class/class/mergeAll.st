merging
mergeAll

	self subclasses
		do: [:archive | archive merge]
		displayingProgress: [:archive | 'Merging archives into profiles...', archive name].