geometry
extent: aPoint

	| extentChanged |
	extentChanged := aPoint ~= self extent.

	super extent: aPoint.

	extentChanged ifFalse: [^ self].
	
	(aPoint x > aPoint y and: [self ui buttonContainer submorphs size < 2])
		ifTrue: [self ui buttonContainer listDirection: #leftToRight]
		ifFalse: [self ui buttonContainer listDirection: #topToBottom].
		
	self ui buttonContainer
		layoutInset: (self ui buttonContainer listDirection = #leftToRight
			ifTrue: [(self width * 0.30)@0 corner: (self width * 0.30)@0]
			ifFalse: [(self width * 0.20)@0 corner: (self width * 0.20)@0]).
		
	(self ui buttonContainer listDirection = #leftToRight
		ifFalse: [#(0.1 0.2 0.5 0.9)]  
		ifTrue: [#(0.0 0.2 0.75 1.0)]) overlappingPairsWithIndexDo: [:top :bottom :index |
			(self ui panel submorphs at: index)
				frameFractions: (0@top corner: 1@bottom)].
			
	self ui buttonContainer submorphs size = 1 ifTrue: [
		self ui buttonContainer listCentering: #center.
		self ui buttonContainer submorphs first hResizing: #shrinkWrap].
	self ui buttonContainer submorphs size > 1 ifTrue: [
		self ui buttonContainer listCentering: #topLeft.
		self ui buttonContainer submorphs first hResizing: #spaceFill].