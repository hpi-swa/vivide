connections and tuples
wantsToBeAttachedTo: anotherPane
	"Avoid weird cycles."
	
	^ (self allOwners identityIncludes: anotherPane) not and: [
		"Top-level pane in some other container."
		anotherPane ownerChainPanes size = 1
			"Sibling pane in same container"
			or: [anotherPane owner == self owner]]