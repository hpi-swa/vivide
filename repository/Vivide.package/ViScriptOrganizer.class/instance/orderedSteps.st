accessing
orderedSteps

	^ self steps values sorted: [:s1 :s2 | s1 priority <= s2 priority]