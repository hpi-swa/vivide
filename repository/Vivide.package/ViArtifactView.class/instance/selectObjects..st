actions
selectObjects: someObjects
	"Explicit selection  mechansim."
	
	self
		setProperty: #lastSelection
		toValue: (someObjects asList collect: [:o |
			Dictionary newFrom: {#object -> o}]). 

	self yield: self selectedNodes.