tests
test11Notifications

	| q oldNodes |
	q := ViQueryStep transform: '[:objs | objs]'.
	
	q definition
		updateSetDefinition: ViQueryUpdateDefinition defAllSystemChangeNotifications;
		updateClearDefinition: ViQueryUpdateDefinition defNoSystemChangeNotifications.
	
	"Prepare view to update."
	sut firstStep: (ViQueryStep use: #(1 2 3 4 5) in: q).
	oldNodes := sut nodes.
	self assert: 5 equals: oldNodes size.
	
	self simulateSystemChangeAndCallbacks.

	sut nodes in: [:newNodes |
		oldNodes with: newNodes do: [:n1 :n2 |
			self
				assert: n1 object == n2 object;
				assert: n1 ~~ n2]].