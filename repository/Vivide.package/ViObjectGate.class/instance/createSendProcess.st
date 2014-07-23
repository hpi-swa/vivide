private
createSendProcess
	"Send outgoingObjects, recieve incomingObjects."
	
	sendProcess := [[
		
		socket isUnconnectedOrInvalid
			ifTrue: [self connectionLost].
		
		outObjects next in: [:obj |
			socket
				sendData: (self serializeObject: obj);
				sendData: '?'. "mark end of object"
			self objectSent: obj.  
			].
		
	] repeat ] forkAt: 35.