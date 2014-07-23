testing
isConnected

	^ ((socket notNil
		and: [socket isConnected])
		and: [sendProcess notNil])
		and: [recvProcess notNil]