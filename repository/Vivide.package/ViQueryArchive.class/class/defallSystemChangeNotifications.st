definitions
defallSystemChangeNotifications
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryUpdateDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'29 January 2014 11:51:35 am'); yourself)); add: (#id->#allSystemChangeNotifications); add: (#block->[:model | SystemChangeNotifier uniqueInstance
	notify: model ofAllSystemChangesUsing: #refresh:]); add: (#sourceCode->'[:model | SystemChangeNotifier uniqueInstance
	notify: model ofAllSystemChangesUsing: #refresh:]'); yourself)