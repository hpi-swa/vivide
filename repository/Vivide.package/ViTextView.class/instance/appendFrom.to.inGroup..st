actions
appendFrom: start to: end inGroup: group

	| oldText |
	oldText := textEdit theText copy.
	
	start to: end do: [:idx |
		(self model childAt: idx inGroup: group) in: [:node |
			lastNode := node.
			self specs do: [:spec |
				(spec itemFor: node) ifNotEmpty: [:text |
				oldText append: text; append: ' ']].
			oldText append: String cr]].
		
	textEdit theText: oldText.