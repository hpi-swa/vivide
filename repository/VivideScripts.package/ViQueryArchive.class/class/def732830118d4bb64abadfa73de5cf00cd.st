definitions
def732830118d4bb64abadfa73de5cf00cd
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:process | 
	"See Debugger >> expandStack, fullyExpandStack"
	process suspendedContext
		ifNil: [#()]
		ifNotNil: [:ctxt | ctxt stackOfSize: 10 + 100000]]).
(#class -> ViQueryMapDefinition).
(#id -> #'73283011-8d4b-b64a-badf-a73de5cf00cd').
(#inputKind -> Process).
(#mapType -> #each).
(#outputKind -> Context).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 February 2014 5:50:41 pm')})).
(#sourceCode -> '[:process | 
	"See Debugger >> expandStack, fullyExpandStack"
	process suspendedContext
		ifNil: [#()]
		ifNotNil: [:ctxt | ctxt stackOfSize: 10 + 100000]]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})