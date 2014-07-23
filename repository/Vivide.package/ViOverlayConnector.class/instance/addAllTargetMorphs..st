accessing
addAllTargetMorphs: someMorphs

	someMorphs do: [:target |
		target allOwnersDo: [:morph | morph isTransformMorph ifTrue: [
			self connectTransformMorph: morph]].
		self connectMorph: target].
	
	self targetMorphs addAll: someMorphs.