accessing - private
selectGroupByEvent: anEvent

	| groupBounds step |
	self hasContent ifFalse: [^ self].
	
	groupBounds := primaryList bounds outsetBy: 4.
	
	(groupBounds containsPoint: anEvent position)
		ifFalse: [^ self].
		
	step := groupBounds height // self groups size.
	
	"Iterate possible y values."
	1 to: self groups size do: [:index |
		anEvent position y > (groupBounds top + (step * index))
			ifFalse: [^ self selectGroupAt: index]].