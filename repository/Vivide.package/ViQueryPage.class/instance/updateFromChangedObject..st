as yet unclassified
updateFromChangedObject: evt

	self flag: #performance. "mt: Defer update if page is not visible."
	(self objects anySatisfy: [:obj | obj == evt item])
		ifTrue: [
			self queryModel updateChildren.
	
	"Signal current selection again."
	self objectSelectionChanged: (self currentVisibleView selectedNodes collect: [:node | node at: #object]).
	self flag: #missingSignal. "mt: What about #objectsChanged:?"
	].