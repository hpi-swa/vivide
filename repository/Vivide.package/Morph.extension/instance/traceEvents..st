*vivide-tracing
traceEvents: aBoolean

	aBoolean == self traceEvents ifTrue: [^ self].

	self allMorphs do: [:m |
		m setProperty: #traceEvents toValue: aBoolean].
	
	self traceEvents
		ifTrue: [
			self assureEventWrapper ifNotNil: [:wrapper |
				wrapper affectedMorphs: wrapper affectedMorphs, self allMorphs]]
		ifFalse: [
			self eventWrapper ifNotNil: [:method |
				method isMwMethodWrapper ifFalse: [^ self].
				method affectedMorphs: (method affectedMorphs copyWithoutAll: self allMorphs).
				method affectedMorphs ifEmpty: [method uninstall]]].
	
	