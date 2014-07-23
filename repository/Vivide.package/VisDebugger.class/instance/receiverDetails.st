as yet unclassified
receiverDetails

	^ {
	{#receiverDetails. self squeakTextViewCreator} -> {
		[:binding | binding value] -> {Association.Object}.
		[:object | "Inspector >> toggleIndex:, selectionPrintString"
			#text -> (object isString
				ifTrue: [object]
				ifFalse: [[(object printStringLimitedTo: 5000) asText]
					on: Error
					do: ['<error in printString>' asText in: [:text |
						text addAttribute: TextColor red from: 1 to: text size; yourself]]])]
			-> {Object.Object}
	}
	}