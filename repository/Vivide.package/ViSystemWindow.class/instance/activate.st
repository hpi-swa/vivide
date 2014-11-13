top window
activate

	active := true.
	super activate.
	
	"Need to do this explicitely because #outerBounds are not reliable here."
	self invalidRect: ((
		self boundsForShadow topLeft
			- (self shadowWidth @ self shadowWidth)
			+ self shadowOffset)
		extent: self dropShadow extent).

	self isSticky
		ifTrue: [self pushOtherWindowsAside].