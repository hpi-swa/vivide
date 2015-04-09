initialization
initializeFor: aScript in: anEnvironment

	self setProperty: #viewId toValue: self class defaultViewId.     
	self connect: self signal: #selectionChanged: to: anEnvironment selector: #notifyChangedSelection:.

	"---"

	self connect: self signal: #doubleClicked: toSelector: #openNode:.
	self connect: self signal: #returnPressed: toSelector: #openNode:.
	
	self
		setProperty: #expandAll
		toValue: (aScript valueOfProperty: #expandAll ifAbsent: [false]).