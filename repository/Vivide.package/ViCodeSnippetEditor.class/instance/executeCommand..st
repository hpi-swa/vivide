actions
executeCommand: aQueryCommand

	(self context
		ifNil: [aQueryCommand execute]
		ifNotNil: [:obj | aQueryCommand executeWith: obj])" in: [:result |
			result explore in: [:wnd |
				ActiveHand submorphs
					ifEmpty: [ActiveHand grabMorph: wnd]]]"