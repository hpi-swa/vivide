as yet unclassified
setModelForPane: pane withNodes: someNodes

	someNodes ifEmpty: [^ pane model: nil].

	pane model: (ViQueryNode new
		firstStep: (ViQueryStep use: (someNodes collect: [:node | node object]) in: someNodes first firstStep)).