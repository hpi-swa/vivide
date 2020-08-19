as yet unclassified
initializeLabelArea

	| box |
	box := Morph new name: 'label area'; color: Color transparent; hResizing: #spaceFill; vResizing: #shrinkWrap; edgeCell: #top; edgeSide: #inside; layoutPolicy: TableLayout new; listDirection: #leftToRight; layoutInset: self gripThickness; cellPositioning: #bottomCenter; cellInset: 2; yourself.

	label := StringMorph contents: 'Unnamed' font: Preferences windowTitleFont.
	label hResizing: #spaceFill.
	
	closeBox := self createCloseBox.
	resizeBox := self createResizeBox.
	copyBox := self createCopyBox.
	
	box addAllMorphs: {closeBox. label. resizeBox. copyBox}.
	
	self flag: #bug. "mt: There is an event-handling conflict with resize grips. Overlapping siblings can still not reject-and-pass on."
	self addMorphFront: box.
	
	"Reserve enough space for the label area."
	self layoutOutset: (self gripThickness @ box fullBounds height corner: self gripThickness @ self gripThickness).