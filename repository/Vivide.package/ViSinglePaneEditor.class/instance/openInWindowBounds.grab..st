as yet unclassified
openInWindowBounds: bounds grab: boolean

	| wnd |
	wnd := super openInWindowBounds: bounds grab: boolean.
	
	self pane ifNotNil: [:pane | pane updateColor].
	
	^ wnd