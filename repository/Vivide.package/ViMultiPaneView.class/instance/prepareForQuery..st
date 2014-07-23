as yet unclassified
prepareForQuery: aQuery

	self panes do: [:pane | pane delete].

	aQuery hasCycle ifTrue: [
		^ self prepareForQueryWithCycle: aQuery].

	(aQuery allPropertyStepsBySequence collect: [:seq |
		(self createPaneForStep: seq first) in: [:pane |
			pane addColumns: (self createSpecs: seq)]]) in: [:newPanes |
		| offset left |
		offset := 1.0 / newPanes size.
		left := 0.0.
		newPanes do: [:pane |
			pane layoutFrame: (LayoutFrame
				fractions: (left @ 0.0 corner: (left + offset) @ 1.0)
				offsets: (2 @ 1 corner: -2 @ -1)).
			left := left + offset.
			
			self connect: pane signal: #doubleClicked: toSelector: #doubleClicked:.
			self connect: pane signal: #returnPressed: toSelector: #returnPressed:.
			self connect: pane signal: #hovered: toSelector: #hovered:.
			].
		
		self panes addAll: newPanes.
		self addAllMorphs: self panes.
		self addPaneSplitters.
		newPanes overlappingPairsDo: [:p1 :p2 |
			self connect: p1 signal: #selectionChanged: toSelector: #setModelForPane:withNodes: pattern: {#=. p2. 1}].
		newPanes ifNotEmpty: [
			self connect: newPanes last signal: #selectionChanged: toSelector: #selectionChanged:].
		
		].