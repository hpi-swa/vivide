as yet unclassified
process: node

	queryModel == node ifFalse: [
		finder root: nil.
		currentQueryView model: nil.
	
		queryModel := node.
	
		finder root: node.
		currentQueryView model: node].

	self reset.