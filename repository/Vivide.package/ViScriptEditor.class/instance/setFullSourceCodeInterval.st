source code
setFullSourceCodeInterval
	"Keep the interval (and so the textField) stable."

	self flag: #useEditDistance. "mt: Maybe we can also tolerate minor ediits an keep the view stable by just adjusting the current script pointer?"
	
	self fullSourceCode ifNil: [
		^ self fullSourceCodeInterval: (1 to: 0)].
	
	self fullSourceCodeInterval ifNotNil: [:interval |
		[(RBParser parseExpression: (self fullSourceCode copyFrom: interval first to: interval last)) in: [:node | 
			(node isBlock or: [(node isMessage
				and: [node selector = #'->'])
				and: [node arguments first isArray]])
					ifTrue: [^ self "keep the interval as is"]]]
			on: Error do: [ "Ignore parsing errors." ]].
	
	"Reset the interval to show all the code."
	self fullSourceCodeInterval: (1 to: self fullSourceCode size).
	self goToDeepestBlock.	