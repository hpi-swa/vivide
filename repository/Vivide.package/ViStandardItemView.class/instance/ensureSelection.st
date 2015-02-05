as yet unclassified
ensureSelection
	"Select something..."
	
	self currentViews do: [:view | view selection isEmpty ifTrue: [view selectFirst]].