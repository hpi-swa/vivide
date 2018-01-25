testing - convenience
isScriptEditor
	"Convenience. Does this pane look like an editing tool for a script's steps?"
	
	^ (self currentQuery notNil
		and: [self currentQuery id = #artifacts])
		and: [self objects anySatisfy: [:ea | ea isKindOf: ViScriptPart]]