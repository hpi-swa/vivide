callbacks
onOperationClicked: aNode

	(aNode at: #argument)
		ifNil: [
			self
				operationSelected: (aNode at: #operation)
				inGroup: self currentGroupName]
		ifNotNil: [:arg |
			self
				operationSelected: (aNode at: #operation)
				argument: arg
				inGroup: self currentGroupName].