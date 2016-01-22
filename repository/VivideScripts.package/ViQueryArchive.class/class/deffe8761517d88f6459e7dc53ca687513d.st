definitions
deffe8761517d88f6459e7dc53ca687513d
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:cat | {
	#text -> (ViLabelServiceForEclipse new doSystemCategory: cat).
	#icon -> (ViIconServiceForEclipse new doSystemCategory: cat)}]).
(#class -> ViQueryMapDefinition).
(#id -> #'fe876151-7d88-f645-9e7d-c53ca687513d').
(#inputKind -> String).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 September 2013 3:21:01 pm')})).
(#sourceCode -> '[:cat | {
	#text -> (ViLabelServiceForEclipse new doSystemCategory: cat).
	#icon -> (ViIconServiceForEclipse new doSystemCategory: cat)}]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})