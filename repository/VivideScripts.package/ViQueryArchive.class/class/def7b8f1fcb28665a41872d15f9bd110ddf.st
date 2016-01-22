definitions
def7b8f1fcb28665a41872d15f9bd110ddf
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:fileEntry | [fileEntry readStream upToEnd asText] on: Error do: [:ex | ex]]).
(#class -> ViQueryMapDefinition).
(#id -> #'7b8f1fcb-2866-5a41-872d-15f9bd110ddf').
(#inputKind -> DirectoryEntryFile).
(#mapType -> #each).
(#outputKind -> Text).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '6 December 2013 5:59:01 pm')})).
(#sourceCode -> '[:fileEntry | [fileEntry readStream upToEnd asText] on: Error do: [:ex | ex]]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})