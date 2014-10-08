actions
selectObjects: someObjects
	"Explicit selection  mechansim."
	
	(ViQueryInterpreter isCollection: someObjects)
		ifFalse: [^ self selectObjects: {someObjects}].

	self
		setProperty: #lastSelection
		toValue: (someObjects collect: [:o |
			Dictionary newFrom: {#object -> o}]). 

	self selectionChanged: self selectedNodes.