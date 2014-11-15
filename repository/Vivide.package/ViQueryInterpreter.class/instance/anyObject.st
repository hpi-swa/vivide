accessing - convenience
anyObject

	self groups do: [:group | (self objects at: group)
		ifNotEmpty: [:objs | ^ objs first]].
	^ nil