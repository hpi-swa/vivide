as yet unclassified
sourceCode: aString

	sourceCode := aString.
	
	"Code must be a block with no trailing period(s) to be inserted into storeString."
	[sourceCode notEmpty and: [sourceCode last ~= $]]]
		whileTrue: [sourceCode := sourceCode allButLast].