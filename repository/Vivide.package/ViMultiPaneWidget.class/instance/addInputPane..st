as yet unclassified
addInputPane: aPane

	self inputPanes add: aPane.
	aPane providersForSelections add: self.