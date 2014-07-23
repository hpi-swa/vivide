layout
layout: aToolbar in: newBounds

	aToolbar leftPanel orientation == #rightToLeft
		ifTrue: [aToolbar leftPanel topRight: aToolbar topLeft + (2@0)]
		ifFalse: [aToolbar leftPanel topLeft: aToolbar topLeft + (2@0) - (aToolbar leftPanel widthCollapsed @ 0)].
		
	aToolbar leftPanel bottom: (aToolbar leftPanel bottom min: ActiveWorld bottom).
	
	aToolbar topPanel topRight: aToolbar topRight + (-7@3).
	
	aToolbar rightPanel orientation == #leftToRight
		ifTrue: [aToolbar rightPanel topLeft: aToolbar topRight + (-1@23)]
		ifFalse: [aToolbar rightPanel topRight: aToolbar topRight + (-1@23) + (aToolbar rightPanel widthCollapsed @ 0)].
		
	aToolbar rightPanel bottom: (aToolbar rightPanel bottom min: ActiveWorld bottom).