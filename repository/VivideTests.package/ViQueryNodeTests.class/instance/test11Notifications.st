tests
test11Notifications

	| script oldNodes |
	script := {[:class | class] -> {#notifier -> ViSystemChangeNotifier}} asScript.
		
	"Prepare view to update."
	sut
		inputForChildren: self class withAllSuperclasses;
		firstStep: script.
	oldNodes := sut nodes.
	self assert: self class withAllSuperclasses size equals: oldNodes size.
	
	self simulateSystemChangeAndCallbacks.

	sut nodes in: [:newNodes |
		oldNodes with: newNodes do: [:n1 :n2 |
			self
				assert: n1 object == n2 object;
				assert: n1 ~~ n2]].