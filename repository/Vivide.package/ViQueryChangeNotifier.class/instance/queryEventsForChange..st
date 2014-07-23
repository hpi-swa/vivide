private-event lists
queryEventsForChange: changeKind 
	| selectorBlock |
	selectorBlock := AbstractEvent eventSelectorBlock.
	^self allItemKinds 
		collect: [:itemKind | selectorBlock value: itemKind value: changeKind]