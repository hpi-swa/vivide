initialization
initialize

	super initialize.
	self
		color: Color transparent;
		layoutPolicy: ViConstraintLayout new;
		layoutInset: 0.

	self eventHandler: UiEventHandler new.

	self connect: self eventHandler signal: #mouseMoved: toSelector: #onMouseMove:.

	self connect: self eventHandler signal: #mouseLeft: toSelector: #removeProperty: pattern: #(=dropPane).
	self connect: self eventHandler signal: #mouseLeftDragging: toSelector: #removeProperty: pattern: #(=dropPane).