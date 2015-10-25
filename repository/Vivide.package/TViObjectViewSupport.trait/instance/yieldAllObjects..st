updating
yieldAllObjects: someObjects
	"Select some objects. This works in a deferred way to allow multiple selections be converted into a single communication message to the pane."

	self yield: (someObjects collect: [:object |
		Dictionary new at: #object put: object; yourself]).