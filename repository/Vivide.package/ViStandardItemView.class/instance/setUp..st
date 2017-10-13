as yet unclassified
setUp: aScript

	self
		setProperty: #yieldOn
		toValue: (aScript valueOfProperty: #yieldOn ifAbsent: [#(selected)]).

	self disconnectSignal: #doubleClicked: from: self.
	self disconnectSignal: #returnPressed: from: self.
	
	(aScript hasProperty: #yieldOn) ifFalse: [
		self connect: self signal: #doubleClicked: toSelector: #openNode:.
		self connect: self signal: #returnPressed: toSelector: #openNode:].
	
	self
		setProperty: #expandAll
		toValue: (aScript valueOfProperty: #expandAll ifAbsent: [false]).

	self
		setProperty: #selectNone
		toValue: (aScript valueOfProperty: #selectNone ifAbsent: [false]).

	(aScript valueOfProperty: #searchBar ifAbsent: [true])
		ifTrue: [self showSearchBar]
		ifFalse: [self hideSearchBar].
	(aScript valueOfProperty: #commandsBar ifAbsent: [true])
		ifTrue: [self showCommandsBar]
		ifFalse: [self hideCommandsBar].

	self currentViews do: [:view |
		view dragDropSpec dragTransferType: (aScript valueOfProperty: #dragType ifAbsent: [#objects])]. 