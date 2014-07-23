accessing - objects
selectedResults
	"Return the objects users selected and interact with."
	
	^ self view selectedNodes collect: [:node | node at: #object]