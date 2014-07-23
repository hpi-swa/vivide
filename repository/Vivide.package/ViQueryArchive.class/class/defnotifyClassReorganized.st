definitions
defnotifyClassReorganized
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryUpdateDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'6 September 2013 9:31:23 pm'); yourself)); add: (#id->#notifyClassReorganized); add: (#block->[:model | SystemChangeNotifier uniqueInstance
	notify: model ofSystemChangesOfItem: AbstractEvent classKind
	change: ReorganizedEvent changeKind using: #refresh:]); add: (#sourceCode->'[:model | SystemChangeNotifier uniqueInstance
	notify: model ofSystemChangesOfItem: AbstractEvent classKind
	change: ReorganizedEvent changeKind using: #refresh:]'); yourself)