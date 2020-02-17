accessing - change
newProperties

	^ (self environmentAt: #newProperties) ifNotNil: [:assocs |
		Dictionary withAll: assocs]