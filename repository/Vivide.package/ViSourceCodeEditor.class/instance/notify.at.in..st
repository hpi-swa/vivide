new selection
notify: aMessage at: aLocation in: aSource

	| message |
	self selectAt: aLocation.
	
	"Trigger manual focus changes. Should be automatic on selection changed?"
	self morph editView onFocusChanged: (UiPlatform current textEditorPointBlock: self).
	
	UiMessage
		information: aMessage
		at: (self morph localPointToGlobal: (
			(UiPlatform current textEditorPointBlock: self) bottomLeft)).