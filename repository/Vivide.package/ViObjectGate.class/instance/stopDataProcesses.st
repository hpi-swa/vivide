private
stopDataProcesses

	sendProcess ifNotNil: [:proc | proc terminate].
	recvProcess ifNotNil: [:proc | proc terminate].
	
	sendProcess := nil.
	recvProcess := nil.
	
	socket ifNotNil: [:s | s destroy].