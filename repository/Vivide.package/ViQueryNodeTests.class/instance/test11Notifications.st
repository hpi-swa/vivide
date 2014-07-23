tests
test11Notifications

	| q view env oldNodes |
	q := ViQueryStep transform: '[:objs | objs]'.
	env := ViPane new.
	view := q updateView: nil forEnvironment: env.
	
	q definition
		updateSetDefinition: ViQueryUpdateDefinition defAllSystemChangeNotifications;
		updateClearDefinition: ViQueryUpdateDefinition defNoSystemChangeNotifications.
	
	"Prepare view to update."
	sut firstStep: (ViQueryStep use: #(1 2 3 4 5) in: q).
	view model: sut.
	oldNodes := view visibleNodes.
	self assert: 5 equals: oldNodes size.
	
	self simulateSystemChangeAndCallbacks.

	view visibleNodes in: [:newNodes |
		oldNodes with: newNodes do: [:n1 :n2 |
			self
				assert: n1 object == n2 object;
				assert: n1 ~~ n2]].