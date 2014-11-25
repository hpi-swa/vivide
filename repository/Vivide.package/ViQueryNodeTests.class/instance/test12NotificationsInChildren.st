tests
test12NotificationsInChildren
	"Notifications should work in a selective way!"

	| q1 p q2 oldNodes |
	q1 := ViQueryStep transform: '[:objs | objs]'.
	p := ViQueryStep property: '[:obj | obj asString]'.
	q2 := ViQueryStep collect: '[:obj | obj * 2]'.
	q1 next: p. p next: q2.
		
	
	q2 definition
		updateSetDefinition: ViQueryUpdateDefinition defAllSystemChangeNotifications;
		updateClearDefinition: ViQueryUpdateDefinition defNoSystemChangeNotifications.
	
	"Prepare view to update."
	sut firstStep: (ViQueryStep use: #(1 2 3 4 5) in: q1).
	oldNodes := sut allNodes.
	self assert: 10 equals: oldNodes size.
	
	self simulateSystemChangeAndCallbacks.

	sut allNodes in: [:newNodes | | same different |
		same := 0. different := 0.
		oldNodes with: newNodes do: [:n1 :n2 |
			n1 ~~ n2
				ifTrue: [different := different + 1]
				ifFalse: [same := same + 1]].
		self
			assert: 5 equals: same;
			assert: 5 equals: different].