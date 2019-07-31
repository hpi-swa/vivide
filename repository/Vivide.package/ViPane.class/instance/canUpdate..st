updating - kernel
canUpdate: updateId

	^ (lastUpdateId == updateId and: [forceUpdate == #never])
		ifTrue: [false "abort update cycle"]
		ifFalse: [
			forceUpdate := forceUpdate == #once ifTrue: [#never] ifFalse: [#always].
			lastUpdateId := updateId.
			true]