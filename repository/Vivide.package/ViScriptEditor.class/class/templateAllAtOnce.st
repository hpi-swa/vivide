as yet unclassified
templateAllAtOnce

	^ (26 to: 45) -> '[:in :out | out addAll: ([:objects | objects] value: in)]'