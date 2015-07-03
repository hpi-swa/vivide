as yet unclassified
newProperties

	^ newProperties ifNil: [newProperties := Dictionary newFrom: self oldItem second]