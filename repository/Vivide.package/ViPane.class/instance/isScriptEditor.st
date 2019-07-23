testing - convenience
isScriptEditor
	"Convenience. Does this pane look like an editing tool for a script's steps?"
	
	^ (self script notNil
		and: [self script id = #artifacts])
		and: [self objects anySatisfy: [:ea | ea isScript]]