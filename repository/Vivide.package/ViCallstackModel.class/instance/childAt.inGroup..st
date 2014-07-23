item model - hierarchy
childAt: index inGroup: groupName
	"Return the child at the given index in the given group. Override this if you need index-based child access."
	
	^ UiPropertyItemNode new
		at: #object put: ((stacks at: (self groups indexOf: groupName)) at: index);
		yourself