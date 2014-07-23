updating
refreshFromEditor: anArtifactEditor
	"Uses objects that are either computed in a block using the given editor OR the list that was configured."

	self contents ifNil: [^ self].

	self objects: (self contents isBlock
		ifTrue: [self contents cull: anArtifactEditor]
		ifFalse: [self contents]).