accessing
theClass: aClassOrMetaClass

	theClass = aClassOrMetaClass ifTrue: [^ self].
	
	self flag: #merge. "mt: store reference only once; maybe in model"
	theClass := aClassOrMetaClass.
	self model
		theClass: theClass;
		doItReceiver: theClass theNonMetaClass.
	
	self textMorph styler ifNil: [^ self].
	theClass ifNil: [^ self].
		
	theClass isMeta
		ifTrue: [self textMorph styler: ViTextStylerForClass new]
		ifFalse: [self textMorph styler: ViTextStyler new].
	
	self textMorph styler classOrMetaClass: theClass.