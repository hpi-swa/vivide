accessing - view
visibleResults
	"Return the objects users can see and interact with."

	self flag: #refactor. "mt: This method expects specific api of view."	
	^ self view
		ifNil: [#()]
		ifNotNil: [:view | view visibleNodes collect: [:node | node at: #object]]