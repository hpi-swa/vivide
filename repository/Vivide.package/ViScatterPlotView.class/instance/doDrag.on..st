as yet unclassified
doDrag: evt on: morph

	| pt1 pt2 selectionRectangle |
	pt1 := morph valueOfProperty: #dragStart ifAbsent: [0@0].
	pt2 := evt position.
	
	selectionRectangle := (pt1 min: pt2) corner: (pt1 max: pt2).
	
	morph submorphsDo: [:m |
		(m bounds intersects: selectionRectangle)
			ifTrue: [self highlightItem: m; selectItemSilently: m]
			ifFalse: [self unhighlightItem: m; deselectItemSilently: m]].
		
	self yieldSelectionOn: morph.