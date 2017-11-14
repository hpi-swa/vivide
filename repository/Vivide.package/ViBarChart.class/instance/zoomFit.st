as yet unclassified
zoomFit

	| w1 w2 |
	self content fullBounds.
	
	self scroller horizontalScrollBarPolicy = #asNeeded ifTrue: [
		self content width: 1.
		self content fullBounds].
	
	super zoomFit.
	
	w1 := self content submorphBounds width.
	w2 := self content bounds width.
	
	w1 > w2
		ifTrue: [
			self scroller horizontalScrollBarPolicy: #asNeeded.
			self content width: w1].