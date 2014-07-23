signals - callbacks
onView: aView selectionChanged: someNodes

	"The view needs to be visible to avoid unexpected callbacks."
	aView owner ifNil: [^ self].
	
	self objectSelectionChanged: (someNodes collect: [:node | node at: #object]).