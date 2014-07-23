actions
addPane: aPane

	aPane hResizing: #spaceFill; vResizing: #spaceFill.
	
	self panes ifEmpty: [
		"first pane"
		aPane topLeft: self ui content topLeft.
		self ui content extentInOwner: aPane extent].
	
	self ui content addMorphFront: aPane.
	self flag: #fixit.
	"aPane layoutChanged."
	self fullBounds.
	self window ifNotNil: [:wnd |
		wnd fullBounds].
	
	self updateHeaderText.