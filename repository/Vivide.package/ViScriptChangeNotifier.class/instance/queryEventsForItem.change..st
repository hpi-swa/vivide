private-event lists
queryEventsForItem: itemKind change: changeKind 
	^AbstractEvent eventSelectorBlock value: itemKind value: changeKind