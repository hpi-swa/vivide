definitions
defnoSystemChangeNotifications
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryUpdateDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'6 September 2013 6:12:46 pm'); yourself)); add: (#id->#noSystemChangeNotifications); add: (#block->[:model | SystemChangeNotifier uniqueInstance
	noMoreNotificationsFor: model]); add: (#sourceCode->'[:model | SystemChangeNotifier uniqueInstance
	noMoreNotificationsFor: model]'); yourself)