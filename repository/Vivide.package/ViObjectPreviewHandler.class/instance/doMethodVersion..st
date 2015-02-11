operations
doMethodVersion: aMethodVersion

	^ panel := self
		codeboxFor:
			'"', aMethodVersion theClass name, ' ', aMethodVersion stamp, '"', String cr,
			aMethodVersion source
		inClass: aMethodVersion theClass