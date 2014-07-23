accessing - view
selectedResults
	"Return the objects users selected and interact with."
	
	self flag: #refactor. "mt: This method expects specific api of view."
	^ self view
		ifNil: [#()]
		ifNotNil: [:view | view selectedNodes collect: [:node | node at: #object]]