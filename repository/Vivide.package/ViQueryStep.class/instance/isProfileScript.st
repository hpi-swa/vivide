testing
isProfileScript
	"Whether this script is in the currently active profile."

	^ ViProfile active
		ifNil: [false]
		ifNotNil: [:p | self organization == p organization]