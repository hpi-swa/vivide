callbacks
onSelectionChanged: someNodes

	self objectSelectionChanged: (someNodes collect: [:node | node at: #object]).