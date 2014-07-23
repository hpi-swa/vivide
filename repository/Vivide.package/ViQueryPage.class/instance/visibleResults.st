accessing - query
visibleResults
	"Return the objects users can see and interact with."
	
	^ self currentVisibleView visibleNodes collect: [:node | node at: #object]