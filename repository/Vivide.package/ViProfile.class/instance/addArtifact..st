history
addArtifact: anArtifactContainer
	"Just unboxing."
	
	self flag: #suspicious. "mt: Who calls this with 'nil' anyway?"
	anArtifactContainer object ifNotNil: [:obj |
		self addObject: obj].