as yet unclassified
children

	| folder |
	folder := entry containingDirectory. 
	^ ('\\input\{(.*)\}' asRegex
		submatchesIn: entry readStream upToEnd
		collect: [:m | folder fullNameFor: m second, '.tex'])
			select: [:nm | OSProcess fileExists: nm]
			thenCollect: [:nm | ViTexContentNode new
				label: 'top';
				content: (FileDirectory directoryEntryFor: nm) readStream upToEnd]