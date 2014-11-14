accessing - view
visibleResults
	"Return the objects users can see and interact with."

	^ self view
		ifNil: [#()]
		ifNotNil: [:view | view visibleNodes collect: [:node | node at: #object]]