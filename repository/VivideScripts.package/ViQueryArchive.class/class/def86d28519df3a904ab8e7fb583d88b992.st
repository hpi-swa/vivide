definitions
def86d28519df3a904ab8e7fb583d88b992
	<definition>

	^ ((Dictionary new) add: (#inputKind->CompiledMethod); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'13 February 2014 2:02:54 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->ViSourceCodeSnippet); add: (#id->#'86d28519-df3a-904a-b8e7-fb583d88b992'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:method | CodeHolder new
	contents: (method methodClass newCompiler format: method getSource in: method methodClass notifying: nil decorated: true);
	instVarNamed: #currentCompiledMethod put: method;
	yourself]'); add: (#mapType->#each); add: (#block->[:method | CodeHolder new
	contents: (method methodClass newCompiler format: method getSource in: method methodClass notifying: nil decorated: true);
	instVarNamed: #currentCompiledMethod put: method;
	yourself]); yourself)