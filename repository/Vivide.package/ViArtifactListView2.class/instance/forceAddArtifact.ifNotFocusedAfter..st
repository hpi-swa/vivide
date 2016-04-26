as yet unclassified
forceAddArtifact: artifact ifNotFocusedAfter: anotherArtifact

	"self setProperty: #isReadingModel toValue: true."
	self flag: #fishy. "mt: Why was this necessary?!"
	self
		addArtifact: artifact
		ifNotFocusedAfter: anotherArtifact.
	"self removeProperty: #isReadingModel."