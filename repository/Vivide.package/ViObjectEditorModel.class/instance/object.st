accessing
object

	^ self base ifNotNil: [:wrapper |
		wrapper instVarNamed: #item]