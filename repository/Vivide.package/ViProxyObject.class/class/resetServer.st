remote - initialization
resetServer

	ObjectGate ifNotNil: [:gate |
		gate disconnectSignal: #objectReceived: from: self selector: #evaluateCode:.
		gate stopDataProcesses].
	
	ObjectCache := Dictionary new.
	ObjectGate := ViObjectGate new
		port: 5000;
		beServer;
		createConnection.
	self connect: ObjectGate signal: #objectReceived: toSelector: #evaluateCode:.