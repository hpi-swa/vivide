item model - hierarchy
childCountInGroup: groupName
	"Override this if you can return the group size in a faster way ;-)"

	self flag: #useCache. "mt: Should performance be optimized here?"
	^ self objects count: [:node | (node at: #group ifAbsent: [#objects]) == groupName]