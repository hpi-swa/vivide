accessing
editors: someEditors
	"Set new containers. Remove old ones. *Preserve* editors with unaccepted changes."
	
	| oldContainersToClose |
	oldContainersToClose := self editors reject: [:c | ((someEditors includes: c) or: [c hasUnacceptedChanges]) or: [c object isNil]].

	someEditors size > 10 ifTrue: [| i |
		i := 0.
		someEditors do: [:c | (self editors includes: c) ifFalse: [
			i := i + 1.
			i > 10 ifTrue: [c collapse]]]].
	
	self
		addAllMorphs: someEditors
		inFrontOf: (self editors ifNotEmpty: [:eds | eds first] ifEmpty: [dropShadow]).
	
	"Remove old containers only AFTER new ones were added to avoid #lastArtifactRemoved being triggerd too early."
	self removeAllMorphsIn: oldContainersToClose.