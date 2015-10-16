actions - results
openResults: someNodes

	| objects |
	someNodes ifEmpty: [^ self].
	
	objects := someNodes collect: [:node | node at: #object].
	
	self hideResults.
	objects do: [:object |
		self artifactRequested: object].