accessing
theClass: aClassOrMetaClass

	theClass := aClassOrMetaClass.
	self textMorph styler classOrMetaClass: nil.
	self model
		theClass: theClass;
		doItReceiver: theClass theNonMetaClass.