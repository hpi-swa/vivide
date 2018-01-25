popup
showAbove: aMorph

	self grabKeyboard.

	self
		extent: aMorph extent;
		topLeft: aMorph topLeft;
		disableTableLayout: true.

	"Apply current color scheme."
	VivideLight active ifNotNil: [:vivide |
		| colorToUse |
		colorToUse := aMorph containingWindow
			ifNil: [Color veryVeryLightGray]
			ifNotNil: [:wnd | wnd color].
		self ui panel color: colorToUse.
		
		self ui messageLbl text
			addAttribute: (TextColor color: (colorToUse adjustBrightness: -0.6)).
		self ui titleLbl text
			addAttribute: (TextColor color: (colorToUse adjustBrightness: -0.6)).
		
		self ui buttonContainer submorphs do: [:button |
			button color: colorToUse]].

	aMorph height < self minExtent y
		ifFalse: [^ aMorph addMorphFront: self].
		
	"Show NOT embedded in morph."
	self
		borderColor: Color white;
		borderWidth: 1;
		height: self minExtent y + 5;
		topLeft: (aMorph localPointToGlobal: aMorph topLeft);
		openInWorld.  