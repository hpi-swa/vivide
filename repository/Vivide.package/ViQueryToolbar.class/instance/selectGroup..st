as yet unclassified
selectGroup: aQueryModel

	self currentGroup value == aQueryModel ifTrue: [^ self].

	"Lazy cache udpate."
	(self object notNil and: [aQueryModel objects isEmpty])
		ifTrue: [aQueryModel objects: {self object}].

	"Prepare view."
	secondaryList model: nil.
	self updatePropertiesForModel: aQueryModel.
	self updateSortOrderForModel: aQueryModel.
	
	secondaryList model: aQueryModel.
	secondaryList helpText: 'No results.'.
	secondaryList selectNone.
	self redrawLater.