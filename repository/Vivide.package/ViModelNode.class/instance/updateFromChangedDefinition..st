query change events
updateFromChangedDefinition: evt

	self firstStep ifNil: [^ self].

	(evt isPropertiesModified or: [evt isSourceCodeChanged not])
		ifTrue: [^ self].
		
	"Special handling for meta scripts. Do not traverse the whole chain."
	self flag: #metaScript.
	((self depth = 0 and: [self firstStep next notNil]) and: [self firstStep next isMeta])
		ifTrue: [
			self firstStep stepsDo: [:step |
			evt item == step definition ifTrue: [
				self triggerUpdateChildren. ^ self]].
			^ self].

	self firstStep nextStepsDo: [:step |
		evt item == step definition ifTrue: [
			self triggerUpdateChildren. ^ self]].