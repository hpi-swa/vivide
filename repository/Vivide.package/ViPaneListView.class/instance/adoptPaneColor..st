as yet unclassified
adoptPaneColor: color

	super adoptPaneColor: color.
	
	self color: color.
	
	self verticalScrollBar buttonColor: color.
	"self transformMorph color: (color alphaMixed: 0.75 with: Color black)."