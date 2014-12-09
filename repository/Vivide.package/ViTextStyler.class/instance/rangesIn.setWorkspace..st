as yet unclassified
rangesIn: aText setWorkspace: aBoolean
	"Overridden to use custom parser."

	| shoutParserClass |
	"Switch parsers if we have to"
	shoutParserClass := ViParser.
	parser class = shoutParserClass ifFalse:[parser := shoutParserClass new].

	^parser 
		rangesIn: aText asString 
		classOrMetaClass: classOrMetaClass 
		workspace: (aBoolean ifTrue:[workspace])  
		environment: environment
