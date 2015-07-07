tests
test12NotificationsInChildren
	"Notifications should work in a selective way!"

	| script oldNodes topCount |
		script := {
			[:category | SystemOrganization listAtCategoryNamed: category].
			[:className | Smalltalk classNamed: className].
			[:class | #text -> class].
			[:class | class methodDict values] -> {#notifier -> ViSystemChangeNotifier}} asScript.
	
	"Prepare view to update."
	sut firstStep: (ViQueryStep use: {self class category} in: script).
	oldNodes := sut allNodes.
	topCount := (SystemOrganization listAtCategoryNamed: self class category) size.

	self assert: sut nodes size equals: topCount.
	
	self simulateSystemChangeAndCallbacks.

	sut allNodes in: [:newNodes | | same different |
		same := 0. different := 0.
		oldNodes with: newNodes do: [:n1 :n2 |
			n1 ~~ n2
				ifTrue: [different := different + 1]
				ifFalse: [same := same + 1]].
		self assert: same >= topCount].