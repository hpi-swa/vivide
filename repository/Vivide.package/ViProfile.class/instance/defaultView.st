accessing
defaultView

	^ defaultView ifNil: [defaultView := ViTreePlainView]