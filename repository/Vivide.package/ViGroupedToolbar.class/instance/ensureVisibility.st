private
ensureVisibility
	"Modify orientation according to screen position."
	
	self orientation: (self valueOfProperty: #defaultOrientation).
	
	(self orientation == #leftToRight and: [self right + secondaryList width > ActiveWorld right])
		ifTrue: [orientation := #rightToLeft].
		
	(self orientation == #rightToLeft and: [self left - secondaryList width < ActiveWorld left])
		ifTrue: [orientation := #leftToRight].