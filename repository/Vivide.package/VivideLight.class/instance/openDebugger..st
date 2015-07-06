actions - open
openDebugger: aDebugger

	| editor window |
	#debugger asScript ifNotNil: [:script |
		aDebugger fullyExpandStack.
		^ self
			openScript: script
			withObjects: {aDebugger}].
	
	
	
	
	
	editor := ViDebuggerEditor new.	
	editor objects: {aDebugger}.
	window := editor openInWindow.
	
	"Show debug message."
	(aDebugger receiver isKindOf: Exception) ifTrue: [
		aDebugger receiver messageText ifNotNil: [:msg |
			self openArtifact: msg asText]].
	
	^ window