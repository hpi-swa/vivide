definitions
defnotifyChangedMethods
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryUpdateDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'6 September 2013 9:02:09 pm'); yourself)); add: (#id->#notifyChangedMethods); add: (#block->[:model | SystemChangeNotifier uniqueInstance
	notify: model ofSystemChangesOfItem: AbstractEvent methodKind using: #refresh:.
	"Check: evt itemClass == model object?"]); add: (#sourceCode->'[:model | SystemChangeNotifier uniqueInstance
	notify: model ofSystemChangesOfItem: AbstractEvent methodKind using: #refresh:.
	"Check: evt itemClass == model object?"]'); yourself)