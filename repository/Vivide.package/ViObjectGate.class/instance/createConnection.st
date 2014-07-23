actions
createConnection

	socket := Socket new.
	self isServer
		ifTrue: [socket listenOn: self port]
		ifFalse: [socket
			connectNonBlockingTo: self hostAddress
			port: self port].
	
	"Asychronuous connect."
	[
		socket
			waitForConnectionFor: 60 * 5 "minutes"
			ifTimedOut: [self connectionTimedOut].
		
		socket isConnected
			ifTrue: [self connectionEstablished].
	] forkAt: 35.	