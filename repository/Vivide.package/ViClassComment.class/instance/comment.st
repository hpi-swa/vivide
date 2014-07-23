accessing
comment

	^ self theClass
		ifNotNil: [:cls | cls organization classComment
			ifEmpty: ['-']
			ifNotEmpty: [:comment | comment]]