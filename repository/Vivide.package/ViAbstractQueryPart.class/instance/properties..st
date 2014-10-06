accessing
properties: dict

	"Bypass JSON stuff."
	properties := Dictionary newFrom: (dict associations collect: [:assoc |
		assoc key -> (Compiler evaluate: assoc value)]).