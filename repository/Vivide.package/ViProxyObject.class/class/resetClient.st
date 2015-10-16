remote - initialization
resetClient

	ObjectGate ifNotNil: #stopDataProcesses.
	ObjectCache := Dictionary new.
	ObjectGate := ViObjectGate new
		port: 5000;
		beClient;
		createConnection.