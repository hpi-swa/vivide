accessing - object
group

	^ self theClass
		ifNil: ['No Class']
		ifNotNil: [:cls | cls theNonMetaClass name]