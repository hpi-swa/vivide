public
notify: anObject using: oneArgumentSelector

	eventSource
		when: 'objectModifiedEvent:'
		send: oneArgumentSelector
		to: anObject.