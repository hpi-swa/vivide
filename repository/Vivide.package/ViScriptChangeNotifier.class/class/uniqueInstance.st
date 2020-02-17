public
uniqueInstance

	UniqueInstance ifNil: [UniqueInstance := self basicNew initialize].
	^UniqueInstance