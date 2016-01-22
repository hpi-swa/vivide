definitions
def6cd6a18b1a41b54283de912a9e7bca74
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:organizers | 
	| orga |
	orga := ViQueryOrganizer new.
	orga notifier: ViQueryChangeNotifier new.
	(ViQuerySerializer
		fromArchive: ViQueryArchive
		intoOrganizer: orga) merge.
	organizers, {orga}]).
(#class -> ViQueryMapDefinition).
(#id -> #'6cd6a18b-1a41-b542-83de-912a9e7bca74').
(#inputKind -> Object).
(#mapType -> #all).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 September 2013 10:03:33 am')})).
(#sourceCode -> '[:organizers | 
	| orga |
	orga := ViQueryOrganizer new.
	orga notifier: ViQueryChangeNotifier new.
	(ViQuerySerializer
		fromArchive: ViQueryArchive
		intoOrganizer: orga) merge.
	organizers, {orga}]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})