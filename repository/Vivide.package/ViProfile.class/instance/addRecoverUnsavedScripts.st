initialization - scripts
addRecoverUnsavedScripts

	self addScript: {
	
		[(SourceFiles at: 2) readOnlyCopy in: [:changeFile | 
	changeFile setConverterForCode.
	(ChangeList new
		scanFile: changeFile
		from: Smalltalk lastQuitLogPosition
		to: changeFile size) changeList]] -> {
			#id -> #recoverUnsavedScripts.
			#label -> 'Recover Unsaved Scripts'}.
		[:changeRecord | #text -> changeRecord string]
	
	} asScript.