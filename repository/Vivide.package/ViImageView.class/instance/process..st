as yet unclassified
process: node

	self content removeAllMorphs.
	node firstNode ifNotNil: [:n |		
		self content addMorphBack: (n at: (#(morph image object) detect: [:s | n includesKey: s])) asMorph]