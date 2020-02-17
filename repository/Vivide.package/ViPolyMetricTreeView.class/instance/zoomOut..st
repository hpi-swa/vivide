as yet unclassified
zoomOut: refPoint

	| delta old |	
	old := self scroller horizontalScrollBar currentValue
		@ self scroller verticalScrollBar currentValue.
		
	self content submorphsDo: [:ea | ea zoomOut].
	self scroller transformMorph fullBounds.
	
	delta := refPoint * (1.0 - (1 / self content firstSubmorph scale)).
		
	self scroller verticalScrollBar currentValue: old y - delta y. 
	self scroller horizontalScrollBar currentValue: old x - delta x.