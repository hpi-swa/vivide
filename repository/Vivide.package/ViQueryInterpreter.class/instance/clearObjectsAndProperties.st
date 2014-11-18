as yet unclassified
clearObjectsAndProperties

	self objects valuesDo: [:objs | objs removeAll].
	self properties valuesDo: [:props | props removeAll].