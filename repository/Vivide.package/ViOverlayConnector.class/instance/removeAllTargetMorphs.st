accessing
removeAllTargetMorphs

	self targetMorphs do: [:target |
		self removeTargetMorph: target].