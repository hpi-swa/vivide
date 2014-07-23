item model - hierarchy
childAt: index inGroup: groupName
	"Return the child at the given index in the given group. Override this if you need index-based child access."

	self flag: #useCache. "mt: Should performance be optimized here?"
	^ (self objects select: [:node | (node at: #group ifAbsent: [#objects]) == groupName])
		at: index