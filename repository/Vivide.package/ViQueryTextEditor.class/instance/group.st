accessing - object
group

	^ (self step ifNotNil: [:step | step definition inputKind name])
		ifNil: ['Queries']