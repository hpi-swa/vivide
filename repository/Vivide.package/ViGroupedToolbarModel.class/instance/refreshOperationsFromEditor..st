as yet unclassified
refreshOperationsFromEditor: anArtifactEditor
	"Uses objects that are either computed in a block using the given editor OR the list that was configured."

	self contents ifNil: [^ self].

	self removeAllObjects.
	self addOperations: ([(self contents cull: anArtifactEditor)]
		on: Error do: [#()]).