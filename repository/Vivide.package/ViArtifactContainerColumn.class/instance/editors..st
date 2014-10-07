accessing
editors: someContainers
	"Set new containers. Remove old ones."
	
	| oldContainersToClose |
	oldContainersToClose := self editors reject: [:c | ((someContainers includes: c) or: [c hasUnacceptedChanges]) or: [c object isNil]].

	someContainers size > 10 ifTrue: [| i |
		i := 0.
		someContainers do: [:c | (self editors includes: c) ifFalse: [
			i := i + 1.
			i > 10 ifTrue: [c collapse]]]].
	
	self
		addAllMorphs: someContainers
		inFrontOf: (self editors ifNotEmpty: [:eds | eds first] ifEmpty: [dropShadow]).
	
	"Remove old containers only AFTER new ones were added to avoid #lastArtifactRemoved being triggerd too early."
	self removeAllMorphsIn: oldContainersToClose.