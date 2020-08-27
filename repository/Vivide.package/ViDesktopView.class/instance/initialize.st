initialization
initialize

	super initialize.

	self color: Color sky.
	
	self hResizing: #rigid.
	self vResizing: #rigid.
	
	self layoutPolicy: nil. "Like Morphic's world."

	self dropEnabled: true.

	self clipSubmorphs: true.

	self panes: #().