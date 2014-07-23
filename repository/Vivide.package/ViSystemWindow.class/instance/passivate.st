top window
passivate

	"Need to do this explicitely because #outerBounds are not reliable here."
	dropShadow ifNotNil: [
		self invalidRect: ((
			self boundsForShadow topLeft
				- (self shadowWidth @ self shadowWidth)
				+ self shadowOffset)
			extent: dropShadow extent)].

	super passivate.
	"label color: (Color gray: 0.2)."