accessing - private
currentGroup

	^ self groups
		detect: [:assoc | secondaryList model == assoc value]
		ifNone: []