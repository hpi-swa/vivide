updating
reset
	"Configure my view with actual data."

	self model ifNil: [^ self].
	(self hasProperty: #isUpdating) ifTrue: [^ self].
	
	[
		self setProperty: #isUpdating toValue: true.

		self content removeAllMorphs.

		self aggregateModel.	
		self updateSubmorphs.
	] ensure: [self removeProperty: #isUpdating].