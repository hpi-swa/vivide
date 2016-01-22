definitions
def33ed3fa1213abf45809290ada0211906
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:state | | cls |
	cls := Smalltalk at: (state properties at: #className ifAbsent: []) ifAbsent: [].
	
	{
	#text -> (state properties at: #headerText).
	#icon -> (cls
			ifNotNil: [cls editorIcon]
			ifNil: [ViIconService doObject: (state properties at: #object ifAbsent: [nil])])}]).
(#class -> ViQueryMapDefinition).
(#id -> #'33ed3fa1-213a-bf45-8092-90ada0211906').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '20 May 2014 12:01:18 pm')})).
(#sourceCode -> '[:state | | cls |
	cls := Smalltalk at: (state properties at: #className ifAbsent: []) ifAbsent: [].
	
	{
	#text -> (state properties at: #headerText).
	#icon -> (cls
			ifNotNil: [cls editorIcon]
			ifNil: [ViIconService doObject: (state properties at: #object ifAbsent: [nil])])}]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})