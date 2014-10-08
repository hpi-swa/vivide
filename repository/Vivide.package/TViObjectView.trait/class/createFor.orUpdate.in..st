instance creation
createFor: aScript orUpdate: anObjectView in: anEnvironment

	((anObjectView valueOfProperty: #viewId) = self defaultViewId
		ifFalse: [self new initializeFor: aScript in: anEnvironment]
		ifTrue: [anObjectView]) in: [:view |
			view updateFor: aScript in: anEnvironment.   
			^ view].