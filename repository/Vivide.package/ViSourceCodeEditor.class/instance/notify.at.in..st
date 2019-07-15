new selection
notify: aMessage at: aLocation in: aSource

	self selectAt: aLocation.
		
	"Trigger manual focus changes. Should be automatic on selection changed?"
	self morph editView onFocusChanged: self pointBlock.

	"Only show a globally-positioned message if the widget is visible."
	self morph isInWorld ifFalse: [^ self].
	UiMessage
		information: aMessage
		at: (self morph localPointToGlobal: self pointBlock bottomLeft).