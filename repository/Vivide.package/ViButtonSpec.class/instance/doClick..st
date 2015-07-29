as yet unclassified
doClick: aNode

	(self data: self clickedSelector for: aNode) in: [:block |
		block isBlock ifTrue: [block value]].