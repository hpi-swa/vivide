process
trySendDocumentsAndAttachments

	[self addAllDocuments: self outgoingDocuments]
		on: Error do: [^ self].
	
	self outgoingDocuments removeAll.
		
	[self outgoingAttachments copy do: [:doc |
		doc value copy "files" do: [:att |
			self
				addForm: att value
				asJpegNamed: att key, '.jpg'
				toId: doc key. "id"
			doc value remove: att].
		
		self outgoingAttachments remove: doc]]
			on: Error do: [^ self].