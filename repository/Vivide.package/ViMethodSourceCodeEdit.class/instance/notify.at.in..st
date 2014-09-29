evaluation - support
notify: aMessage at: aLocation in: aSource

	| message |
	self flag: #refactor. "mt: See #notify:at:in: in class ViSourceCodeEditor, which is accessible from here. Why not use it directly?"
	self textMorph editor selectAt: aLocation.
	
	"Trigger manual focus changes. Should be automatic on selection changed?"
	self onFocusChanged: (UiPlatform current textEditorPointBlock: self textMorph editor).
	
	UiMessage
		information: aMessage
		at: (self textMorph localPointToGlobal: (
			(UiPlatform current textEditorPointBlock: self textMorph editor) bottomLeft)).