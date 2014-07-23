private
scaleToSize: aPoint

	| oldCenter |
	self image extent == aPoint ifTrue: [^ self].
	oldCenter := self center.
	super image: (original scaledToSize: aPoint).  
	self center: oldCenter.