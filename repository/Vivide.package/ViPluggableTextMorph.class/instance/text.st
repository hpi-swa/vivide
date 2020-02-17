accessing
text

	| result |
	
	self model ifNil: [^ ''].
	
	mode == #json ifTrue: [
		^ (self model collectNodes: [:node | node at: #text ifAbsent: [(node at: #object ifAbsent: ['root']) printString]])
			asJsonString asText
		].
	
	
	
	
	
	result := Text new.
	(self textObjectsForNode: self model)
		do: [:text | 
			result append: text]
		separatedBy: [
			result append: String cr; append: self separator; append: String cr].
	^ result