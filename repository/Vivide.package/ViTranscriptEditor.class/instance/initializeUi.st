initialization
initializeUi

	super initializeUi.
		
	transcriptModel := ViTranscriptModel new.
	
	self connect: transcriptModel signal: #entryAppended: toSelector: #addEntry:.
	self connect: self ui clearTranscriptBtn signal: #clicked: to: self ui transcriptEdit selector: #clear.
	
	self ui transcriptEdit eventHandler grabKeyboardOnMouseEnter: true.
	
	self ui transcriptEdit verticalScrollBarPolicy: #asNeeded.