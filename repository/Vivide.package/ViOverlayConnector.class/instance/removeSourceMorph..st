accessing
removeSourceMorph: source

	source allOwnersDo: [:morph | morph isTransformMorph ifTrue: [
		self disconnectTransformMorph: morph]].
	self disconnectMorph: source.

	self sourceMorphs remove: source.