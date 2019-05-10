*vivide
asList
	"Array form better for #collect: etc. with arbitrary objects. Alternative would be to use #collect:as: to override #species."
	
	^ self canBeEnumerated ifTrue: [self asArray] ifFalse: [{self}]