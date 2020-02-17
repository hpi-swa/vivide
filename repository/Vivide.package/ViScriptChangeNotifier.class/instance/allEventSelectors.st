private-event lists
allEventSelectors

	^ {self allItemKinds. self allChangeKinds} asTuples collect: [:tuple |
		ViScriptChangeEvent eventSelectorBlock
			value: tuple first
			value: tuple second]