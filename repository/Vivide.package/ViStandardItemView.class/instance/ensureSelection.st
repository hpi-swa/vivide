as yet unclassified
ensureSelection
	"Select something..."
	
	self currentViews do: [:view | view selectedNodes ifEmpty: [view selectFirst]].