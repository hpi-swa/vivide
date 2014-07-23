accessing - object
object: anObjectGate

	objectGate ifNotNil: [:og |
		og disconnectSignal: #objectReceived: from: self.
		og disconnectSignal: #objectSent: from: self.
		og disconnectSignal: #connectionEstablished from: self.
		og disconnectSignal: #connectionLost from: self.
		og disconnectSignal: #connectionTimedOut from: self].

	objectGate := anObjectGate.
	self clear.
	
	self
		connect: objectGate signal: #objectReceived: toSelector: #addObject:;
"		connect: objectGate signal: #objectSent: toSelector: #foo;"
		connect: objectGate signal: #connectionEstablished toSelector: #updateButtons;
		connect: objectGate signal: #connectionEstablished toSelector: #informationSent: pattern: #(= 'Connection established.');
		connect: objectGate signal: #connectionLost toSelector: #updateButtons;
		connect: objectGate signal: #connectionLost toSelector: #warningSent: pattern: #(= 'Connection lost!');
		connect: objectGate signal: #connectionTimedOut toSelector: #updateButtons;
		connect: objectGate signal: #connectionTimedOut toSelector: #warningSent: pattern: #(= 'Connection timed out!').
