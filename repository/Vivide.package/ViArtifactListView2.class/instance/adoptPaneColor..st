as yet unclassified
adoptPaneColor: color

	super adoptPaneColor: color.
	
	self color: color.
	scrollArea verticalScrollBar buttonColor: color.
	scrollArea transformMorph color: (color alphaMixed: 0.75 with: Color black).