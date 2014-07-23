accessing - objects
visibleResults
	"Return the objects users can see and interact with."
	
	^ self view visibleNodes collect: [:node | node at: #object]