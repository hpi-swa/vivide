as yet unclassified
onSelectionChanged: someNodes

	self objectSelectionChanged: (someNodes collect: [:node | node at: #object]).