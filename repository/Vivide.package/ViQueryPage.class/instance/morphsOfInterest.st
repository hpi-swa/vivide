accessing
morphsOfInterest

	| selectedMorphs |
	self flag: #invasive.
	selectedMorphs := self currentQueryView selection cells collect: [:cell |
		self currentQueryView viewport morphAt: cell].
	^ selectedMorphs
		ifEmpty: [{self}]
		ifNotEmpty: [selectedMorphs]