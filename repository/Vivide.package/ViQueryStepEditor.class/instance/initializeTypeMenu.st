initialization
initializeTypeMenu

	typeMenu := ViContextMenu new
		closeOnAction: true.
	self typeMappings do: [:spec |
		spec
			ifNil: [typeMenu addSeparator]
			ifNotNil: [typeMenu
					addIcon: spec key stepIcon
					icon: spec value second
					text: spec key stepName
					receiver: self
					selector: #currentType:
					argument: spec]].