definitions
def8bab16cf82084b43abb2ab6ad8964984
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:ref | {
	#text -> (ref isSymbol ifTrue: [''] ifFalse: [ViObjectOriginService doObject: ref])}]).
(#class -> ViQueryMapDefinition).
(#id -> #'8bab16cf-8208-4b43-abb2-ab6ad8964984').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:ref | {
	#text -> (ref isSymbol ifTrue: [''''] ifFalse: [ViObjectOriginService doObject: ref])}]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})