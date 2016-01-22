definitions
defallMethodsForClass
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:cls |
	cls theNonMetaClass methodDict values,
	cls theMetaClass methodDict values]).
(#class -> ViQueryMapDefinition).
(#id -> #allMethodsForClass).
(#inputKind -> UiIcons).
(#mapType -> #each).
(#outputKind -> CompiledMethod).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:cls |
	cls theNonMetaClass methodDict values,
	cls theMetaClass methodDict values]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})