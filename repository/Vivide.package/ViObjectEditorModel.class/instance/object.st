accessing
object

	^ self base ifNotNil: [:wrapper |
		wrapper item value]