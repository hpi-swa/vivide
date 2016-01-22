definitions
def9c76ab376e8d7746a7c35b4f72b5552c
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:obj | {
	#text -> (obj workingCopy ancestry ancestorStringWithout: obj packageName).
	#icon -> ((((obj hasPreamble or: [obj hasPostscript]) or: [obj hasPreambleOfRemoval] )or: [obj hasPostscriptOfRemoval]) ifTrue: [UiFugueIcons blueDocumentSmallIcon] ifFalse: [ViIcons blankIcon])}]).
(#class -> ViQueryMapDefinition).
(#id -> #'9c76ab37-6e8d-7746-a7c3-5b4f72b5552c').
(#inputKind -> PackageInfo).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:obj | {
	#text -> (obj workingCopy ancestry ancestorStringWithout: obj packageName).
	#icon -> ((((obj hasPreamble or: [obj hasPostscript]) or: [obj hasPreambleOfRemoval] )or: [obj hasPostscriptOfRemoval]) ifTrue: [UiFugueIcons blueDocumentSmallIcon] ifFalse: [ViIcons blankIcon])}]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})