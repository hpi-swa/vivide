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
			#isGlobal -> true.
			#label -> 'Recover Unsaved Scripts'}.
		[:changeRecords | changeRecords select: [:record | record type = #method and: [record methodClass inheritsFrom: ViScriptArchive]]].
		[:changeRecord | #text -> (changeRecord methodClass name, ' >> ', changeRecord methodSelector, ' ', changeRecord stamp)]
	
	} asScript.