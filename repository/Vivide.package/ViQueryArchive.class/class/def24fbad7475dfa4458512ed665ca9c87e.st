definitions
def24fbad7475dfa4458512ed665ca9c87e
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryUpdateDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'7 November 2013 11:20:22 am'); yourself)); add: (#id->#'24fbad74-75df-a445-8512-ed665ca9c87e'); add: (#block->[:model | SystemChangeNotifier uniqueInstance
	notify: model ofSystemChangesOfItem: AbstractEvent methodKind using: #refresh:;
	notify: model ofSystemChangesOfItem: AbstractEvent classKind change: ModifiedEvent changeKind using: #refresh:]); add: (#sourceCode->'[:model | SystemChangeNotifier uniqueInstance
	notify: model ofSystemChangesOfItem: AbstractEvent methodKind using: #refresh:;
	notify: model ofSystemChangesOfItem: AbstractEvent classKind change: ModifiedEvent changeKind using: #refresh:]'); yourself)