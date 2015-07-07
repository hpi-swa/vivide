definitions
def6cd6a18b1a41b54283de912a9e7bca74
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'18 September 2013 10:03:33 am'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'6cd6a18b-1a41-b542-83de-912a9e7bca74'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:organizers | 
	| orga |
	orga := ViQueryOrganizer new.
	orga notifier: ViQueryChangeNotifier new.
	(ViQuerySerializer
		fromArchive: ViQueryArchive
		intoOrganizer: orga) merge.
	organizers, {orga}]'); add: (#mapType->#all); add: (#block->[:organizers | 
	| orga |
	orga := ViQueryOrganizer new.
	orga notifier: ViQueryChangeNotifier new.
	(ViQuerySerializer
		fromArchive: ViQueryArchive
		intoOrganizer: orga) merge.
	organizers, {orga}]); yourself)