accessing
theClass

	^ self object class
"	^ self contentTree currentNode ifNotNil: [:node |
		node baseObject class]"