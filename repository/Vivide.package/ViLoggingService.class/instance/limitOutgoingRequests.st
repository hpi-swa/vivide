as yet unclassified
limitOutgoingRequests
	"Free system resources in case of crappy network connection."

	self flag: #refactor. "mt: Maybe use file system to free some memory?"

	[self outgoingDocuments size > 100] whileTrue: [
		self outgoingDocuments removeFirst].
	[self outgoingAttachments size > 5] whileTrue: [
		self outgoingAttachments removeFirst].