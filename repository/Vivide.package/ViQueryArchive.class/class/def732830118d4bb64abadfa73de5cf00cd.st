definitions
def732830118d4bb64abadfa73de5cf00cd
	<definition>

	^ ((Dictionary new) add: (#inputKind->Process); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'18 February 2014 5:50:41 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->ContextPart); add: (#id->#'73283011-8d4b-b64a-badf-a73de5cf00cd'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:process | 
	"See Debugger >> expandStack, fullyExpandStack"
	process suspendedContext
		ifNil: [#()]
		ifNotNil: [:ctxt | ctxt stackOfSize: 10 + 100000]]'); add: (#mapType->#each); add: (#block->[:process | 
	"See Debugger >> expandStack, fullyExpandStack"
	process suspendedContext
		ifNil: [#()]
		ifNotNil: [:ctxt | ctxt stackOfSize: 10 + 100000]]); yourself)