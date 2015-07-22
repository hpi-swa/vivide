as yet unclassified
onView: aView selectionChanged: someNodes

	"The view needs to be visible to avoid unexpected callbacks."
	aView owner ifNil: [^ self].
	
	someNodes do: [:node |
		(node at: #selected ifAbsent: []) ifNotNil: [:callback | callback value].
		(node at: #selectedLater ifAbsent: []) ifNotNil: [:callback | 
			Project current addDeferredUIMessage: callback]].
	
	((self valueOfProperty: #yieldOn) includes: #selected)
		ifTrue: [self yield: someNodes].