popup
showAbove: aMorph

	self grabKeyboard.

	self
		extent: aMorph extent;
		topLeft: aMorph topLeft;
		disableTableLayout: true.

	aMorph height < self minExtent y
		ifFalse: [^ aMorph addMorphFront: self].
		
	"Show NOT embedded in morph."
	self
		borderColor: Color white;
		borderWidth: 1;
		height: self minExtent y + 5;
		topLeft: (aMorph localPointToGlobal: aMorph topLeft);
		openInWorld.  