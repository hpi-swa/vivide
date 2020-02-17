templates
templateGlobal

	^ (13 to: 28) -> '[:in :out | [#(hello world)] value in: [:result |
	out addAll: result asList]]'