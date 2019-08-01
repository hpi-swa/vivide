updating - kernel
canUpdate: updateId

	^ (lastUpdateId == updateId and: [forceUpdate == #never])
		ifTrue: [false "abort update cycle"]
		ifFalse: [
			forceUpdate == #once ifTrue: [forceUpdate := #never].
			lastUpdateId := updateId.
			true]