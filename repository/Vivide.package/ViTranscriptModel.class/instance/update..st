updating
update: aSymbol

	aSymbol = #clearText ifTrue: [self cleared].
	aSymbol = #close ifTrue: [self closed].
	aSymbol = #appendEntry ifTrue: [self entryAppended: Transcript contents].