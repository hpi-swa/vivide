accessing
removeTargetMorph: target

	target allOwnersDo: [:morph | morph isTransformMorph ifTrue: [
		self disconnectTransformMorph: morph]].
	self disconnectMorph: target.
	
	self targetMorphs remove: target.