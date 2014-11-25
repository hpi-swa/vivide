couch db
updateDocumentById: uuid with: block

	(self getDocumentById: uuid) in: [:currentDocument |
		(block value: currentDocument) in: [:updatedDocument |
			updatedDocument ~~ currentDocument ifTrue: [
				updatedDocument
					at: #'_id' put: (currentDocument at: #'_id');
					at: #'_rev' put: (currentDocument at: #'_rev')].
			^ self putDocument: updatedDocument]].