accessing
organization
	"For script (id) lookup."

	self flag: #todo. "mt: Look up outer pane-view organizations before using the global (or active) one." 
	^ self script
		ifNotNil: [:step | step organization]
		ifNil: [
			self flag: #metaScript.
			(self owner isKindOf: ViMultiPaneWidget)
				ifTrue: [self owner organization]
				ifFalse: [ViScriptOrganizer active]]