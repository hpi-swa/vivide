loading - general
loadColumn: aColumn

	self states do: [:editorState |
		aColumn addMorphBack: (ViEditor newFromState: editorState)].
	aColumn width: (self properties at: #width).