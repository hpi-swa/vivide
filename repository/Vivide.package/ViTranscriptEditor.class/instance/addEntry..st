actions
addEntry: aString

	| timestamp entry |
	entry := aString withoutLineEndings withBlanksTrimmed.
	timestamp := ('<font color="#AAAAAA">[', 
			(String streamContents:
				[:aStream | Time now print24: true showSeconds: false on: aStream]),
			']</font> ') asHtmlText.

	((aString beginsWith: String cr) or: [aString endsWith: String cr])
		ifTrue: [self ui transcriptEdit theText isEmpty
			ifFalse: [self ui transcriptEdit append: String cr].
			self ui timestampBtn checked
				ifTrue: [self ui transcriptEdit append: timestamp].
			(entry beginsWith: '----SNAPSHOT')
				ifTrue: [self ui transcriptEdit append: ('<b>', entry, '</b>') asHtmlText]
				ifFalse: [self ui transcriptEdit append: entry]]
		ifFalse: [self ui transcriptEdit append: entry].
	
	self ui transcriptEdit scrollToBottom.
	
	self ui redrawBtn checked
		ifTrue: [self redraw].