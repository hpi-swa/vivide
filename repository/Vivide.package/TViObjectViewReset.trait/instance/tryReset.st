updating
tryReset

	(self hasProperty: #shouldReset) ifTrue: [
		self removeProperty: #shouldReset.
		self reset].