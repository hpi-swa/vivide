merge
mergeProfile: dict

	^ self profile
		ifNil: [
			"Try finding profile."
			self profile: (VivideLight profiles detect: [:profile | profile id = (dict at: #id)] ifNone: []).
			self profile
				ifNil: [			
					Transcript showln: '[ViConverter] Creating new profile...'.
					self flag: #todo. "mt: Use ViProfile class >> #newFrom: like in #mergeStep:... etc.".
					self profile: (ViProfile newEmpty register; yourself).
					self profile converter: self. "Remember default converter."
					self profile loadFromDictionary: dict.
					self profile]
				ifNotNil: [:profile |
					profile mergeFromDictionary: dict.
					profile]]
		ifNotNil: [:profile |
			profile id ~= (dict at: #id) ifTrue: [Warning signal: 'You are trying to merge two profiles with different ids!'].
			profile mergeFromDictionary: dict.
			profile]