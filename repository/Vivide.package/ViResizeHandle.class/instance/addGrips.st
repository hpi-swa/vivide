initialization
addGrips

	| points |
	self removeAllMorphs.
	
	points := self orientation = #vertical
		ifTrue: [ViIcons icons8MenuVertical32pxIcon scaledToDisplay asMorph]
		ifFalse: [ViIcons icons8More32pxIcon scaledToDisplay asMorph].	
	
	points layoutFrame: (LayoutFrame
		fractions: (0@0 corner: 1@1) 
		offsets: (
			self orientation = #vertical
				ifTrue: [((self width - points width) // 2 min: 0) @ 0 corner: 0@0]
				ifFalse: [0 @ ((self height - points height) // 2 min: 0) corner: 0@0])).
	
	points ignoresColorMappings: true.
	
	self addMorphBack: points.