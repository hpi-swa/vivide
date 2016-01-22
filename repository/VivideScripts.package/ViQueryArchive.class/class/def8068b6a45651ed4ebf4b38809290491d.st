definitions
def8068b6a45651ed4ebf4b38809290491d
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:mcp | {
	#text -> (ViLabelServiceForEclipse new doMCPackage: mcp).
	#icon -> (ViIconServiceForEclipse new doMCPackage: mcp)}]).
(#class -> ViQueryMapDefinition).
(#id -> #'8068b6a4-5651-ed4e-bf4b-38809290491d').
(#inputKind -> MCPackage).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 September 2013 5:13:59 pm')})).
(#sourceCode -> '[:mcp | {
	#text -> (ViLabelServiceForEclipse new doMCPackage: mcp).
	#icon -> (ViIconServiceForEclipse new doMCPackage: mcp)}]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})