updating
propertiesFromList: dict

	| propertiesToSkip propertiesToRemove propertiesToSet |
	propertiesToSkip := self propertiesToIgnore keys select: [:property |
		(self propertiesToIgnore at: property) isNil].
	propertiesToRemove := self object properties keys
		copyWithoutAll: dict keys, propertiesToSkip.
	propertiesToSet := dict keys copyWithoutAll: propertiesToSkip.  

	"Remove properties."
	propertiesToRemove do: [:property |
		self object setProperty: property toValue: nil].

	"Overwrite properties."
	propertiesToSet do: [:property |
		((self propertiesToIgnore at: property ifAbsent: [#()]) includes: (dict at: property))
			ifTrue: [self object setProperty: property toValue: nil "remove defaults"]
			ifFalse: [self object setProperty: property toValue: (dict at: property)]].

	"Update visuals."
	self propertiesVisible
		ifTrue: [self flag: #todo. "mt: Maybe we should reset everything?! Watch for #initializeScriptPointer and layout stability!!"]