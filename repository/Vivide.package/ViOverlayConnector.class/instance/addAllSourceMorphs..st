accessing
addAllSourceMorphs: someMorphs

	someMorphs do: [:source | 
		source allOwnersDo: [:morph | morph isTransformMorph ifTrue: [
			self connectTransformMorph: morph]].
		self connectMorph: source].
	
	self sourceMorphs addAll: someMorphs.