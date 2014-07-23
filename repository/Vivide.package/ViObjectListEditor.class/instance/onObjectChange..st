as yet unclassified
onObjectChange: objectKindEvent

	self flag: #performance. "mt: Defer subsequent system events."

	self inputPage onObjectChange: objectKindEvent.
	self outputPages do: [:page |
		page updateFromChangedObject: objectKindEvent].