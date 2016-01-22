definitions
def80d690ae5ea92d4087b42b8c1b10c7e4
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:obj | {#icon -> ((obj at: #projectDescription) ifEmpty: [ViIcons blankIcon] ifNotEmpty: [UiSilkIcons commentIcon]). #balloonText -> (obj at: #projectDescription). #text -> (obj at: #path)}]).
(#class -> ViQueryMapDefinition).
(#id -> #'80d690ae-5ea9-2d40-87b4-2b8c1b10c7e4').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '23 September 2013 5:15:04 pm')})).
(#sourceCode -> '[:obj | {#icon -> ((obj at: #projectDescription) ifEmpty: [ViIcons blankIcon] ifNotEmpty: [UiSilkIcons commentIcon]). #balloonText -> (obj at: #projectDescription). #text -> (obj at: #path)}]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})