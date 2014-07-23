private
createRecvProcess
	"Recieve incomingObjects."
	
	recvProcess := [ | buffer | buffer := ByteString new. [ | idx |
		socket isUnconnectedOrInvalid
			ifTrue: [self connectionLost].
		
		socket waitForData.
		buffer := buffer, socket receiveAvailableData.
		
		
		[idx := buffer findString: '?'. idx > 0] whileTrue: [
			"new object transmitted"
			| obj |
			obj := self deserializeObjectFrom: (buffer first: idx - 1).
			buffer := buffer allButFirst: idx.
			inObjects nextPut: obj.
			self objectReceived: obj].
		
	] repeat ] forkAt: 35.