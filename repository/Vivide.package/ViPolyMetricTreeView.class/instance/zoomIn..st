as yet unclassified
zoomIn: refPoint

	| delta old |
	old := self scroller horizontalScrollBar currentValue
		@ self scroller verticalScrollBar currentValue.
	
	self content submorphsDo: [:ea | ea zoomIn].
	self scroller transformMorph fullBounds.
	
	delta := refPoint * (self content firstSubmorph scale - 1.0).
	
	self scroller verticalScrollBar currentValue: old y + delta y. 
	self scroller horizontalScrollBar currentValue: old x + delta x.