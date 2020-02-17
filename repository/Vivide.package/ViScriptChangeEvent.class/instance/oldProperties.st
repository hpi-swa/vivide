accessing - change
oldProperties

	^ (self environmentAt: #oldProperties) ifNotNil: [:assocs |
		Dictionary withAll: assocs]