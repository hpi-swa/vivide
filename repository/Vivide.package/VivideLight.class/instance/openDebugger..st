actions - open
openDebugger: aDebugger

	| editor window |
	editor := (ViEditorStateLookupService defaultStateFor: ViDebuggerEditor)
		ifNotNil: [:state | ViEditor newFromState: state].
		
	editor objects: {aDebugger}.
	window := editor openInWindow.
	
	"Show debug message."
	(aDebugger receiver isKindOf: Exception) ifTrue: [
		aDebugger receiver messageText ifNotNil: [:msg |
			self openArtifact: msg asText]].
	
	^ window