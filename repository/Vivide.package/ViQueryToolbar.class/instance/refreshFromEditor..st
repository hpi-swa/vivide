as yet unclassified
refreshFromEditor: anArtifactEditor

	"Invalidate all caches."
	self groups do: [:labelToModel |
		labelToModel value objects: #()].
	
	self object: anArtifactEditor object.