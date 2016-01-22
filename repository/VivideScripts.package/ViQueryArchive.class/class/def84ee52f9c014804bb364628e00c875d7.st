definitions
def84ee52f9c014804bb364628e00c875d7
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:classes | classes gather: [:cls | cls theMetaClass methodDict values]]).
(#class -> ViQueryMapDefinition).
(#id -> #'84ee52f9-c014-804b-b364-628e00c875d7').
(#inputKind -> ClassDescription).
(#mapType -> #all).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:classes | classes gather: [:cls | cls theMetaClass methodDict values]]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})