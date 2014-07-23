initialization
initializeLabelArea

	"Initialize the label area (titlebar) for the window."
	label := self createLabel.
	
	"Add collapse box so #labelHeight will work"
	stripes := Array
				with: (RectangleMorph newBounds: bounds)
				with: (RectangleMorph newBounds: bounds).
	
	"see extent:"
	self addLabelArea.
	self setLabelWidgetAllowance.

	self initializeLabelAreaContents.
			
	self setFramesForLabelArea.