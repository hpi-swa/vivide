public
notify: anObject using: oneArgumentSelector 
	"Notifies an object of any query changes."

	self allEventSelectors do: [:eventSelector |
		eventSource when: eventSelector send: oneArgumentSelector to: anObject].