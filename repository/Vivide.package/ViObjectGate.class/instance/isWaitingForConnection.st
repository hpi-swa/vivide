testing
isWaitingForConnection

	^ socket notNil and: [socket isWaitingForConnection]