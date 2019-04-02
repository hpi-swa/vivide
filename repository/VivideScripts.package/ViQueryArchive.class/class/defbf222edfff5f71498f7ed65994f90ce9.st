definitions
defbf222edfff5f71498f7ed65994f90ce9
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:step | {
		#text -> (ViLabelService doObject: step).
		#icon -> (ViIconService doObject: step)}]).
(#class -> ViQueryMapDefinition).
(#id -> #'bf222edf-ff5f-7149-8f7e-d65994f90ce9').
(#inputKind -> ViAbstractQueryPart).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 September 2013 9:29:58 am')})).
(#sourceCode -> '[:step | {
		#text -> (ViLabelService doObject: step).
		#icon -> (ViIconService doObject: step)}]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})