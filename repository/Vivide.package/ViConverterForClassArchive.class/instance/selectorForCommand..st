support
selectorForCommand: dict

	^ (#command, ((dict at: #id) copyWithout: $-)) asSymbol