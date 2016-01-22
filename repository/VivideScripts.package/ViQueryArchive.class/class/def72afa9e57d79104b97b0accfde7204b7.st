definitions
def72afa9e57d79104b97b0accfde7204b7
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:entries | entries gather: [:entry | entry asFileDirectory entries]]).
(#class -> ViQueryMapDefinition).
(#id -> #'72afa9e5-7d79-104b-97b0-accfde7204b7').
(#inputKind -> DirectoryEntryDirectory).
(#mapType -> #all).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:entries | entries gather: [:entry | entry asFileDirectory entries]]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})