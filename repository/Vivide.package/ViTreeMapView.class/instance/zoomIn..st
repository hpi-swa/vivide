zooming
zoomIn: refPoint

	| delta old |
	old := self scroller horizontalScrollBar currentValue
		@ self scroller verticalScrollBar currentValue.
	
	self scroller
		horizontalScrollBarPolicy: #asNeeded;
		verticalScrollBarPolicy: #asNeeded;
		widgetResizable: false.
	self root extent: self root extent * self zoomFactor.
	self scroller transformMorph fullBounds.
			
	delta := refPoint * (self zoomFactor - 1.0).
	
	self scroller verticalScrollBar currentValue: old y + delta y. 
	self scroller horizontalScrollBar currentValue: old x + delta x.