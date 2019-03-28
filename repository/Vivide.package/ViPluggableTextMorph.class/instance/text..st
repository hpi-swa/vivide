accessing
text: newText
	
	mode == #json ifTrue: [
		| tmp |
		tmp := Json readFrom: newText asString readStream.
		self model withNodes: tmp do: [:text :node |
			node text: text].

		self changed: #clearUserEdits.
		self yield: self model nodes.		
		^ self].
	
	(self textObjectsFor: newText)
		with: self model nodes
		do: [:text :node | node text: text].
		
	self changed: #clearUserEdits.

	self yield: self model nodes.