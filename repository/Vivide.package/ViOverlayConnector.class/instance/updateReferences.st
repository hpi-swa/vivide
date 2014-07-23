updating
updateReferences

	self sourceMorphs do: [:morph |
		morph isInWorld ifFalse: [self removeSourceMorph: morph]].

	self targetMorphs do: [:morph |
		morph isInWorld ifFalse: [self removeTargetMorph: morph]].