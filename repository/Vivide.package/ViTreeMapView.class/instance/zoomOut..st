zooming
zoomOut: refPoint

	| delta old |
	((self root extent / self zoomFactor) <= self extent)
		ifTrue: [^self zoomFit].
	
	old := self scroller horizontalScrollBar currentValue
		@ self scroller verticalScrollBar currentValue.
		
	self scroller
		horizontalScrollBarPolicy: #asNeeded;
		verticalScrollBarPolicy: #asNeeded;
		widgetResizable: false.
	self root extent: self root extent / self zoomFactor.
	self scroller transformMorph fullBounds.
	
	delta := refPoint * (1.0 - (1 / self zoomFactor)).
	
	self scroller verticalScrollBar currentValue: old y - delta y. 
	self scroller horizontalScrollBar currentValue: old x - delta x.