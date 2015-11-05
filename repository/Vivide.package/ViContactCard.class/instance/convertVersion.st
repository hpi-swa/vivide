as yet unclassified
convertVersion
	"Make UTF-8 encoding explicit and downgrade to Version 2.1."
	
	| new zeroFound group |
	raw := self raw copyReplaceAll: 'VERSION:3.0' with: 'VERSION:2.1'.
	
	new := ''.
	raw lines do: [:line |
		| key value |
		key := line copyFrom: 1 to: (line indexOf: $:) - 1.
		value := line copyFrom: key size + 2 to: line size.
		
		value := value copyReplaceAll: '\' with: ''.
		
		(key beginsWith: 'TEL') ifTrue: [
			zeroFound := false.
			group := 0.
			value := String streamContents: [:newValue | 
				(ReadStream on: value) in: [:s |
					[s atEnd] whileFalse: [
						s peek = $+ ifTrue: [
							zeroFound := true.
							newValue nextPutAll: (s next: 3).
							newValue nextPut: Character space.
							group := (key endsWith: 'CELL')
								ifTrue: [-1]
								ifFalse: [0]].
						(zeroFound not and: [s peek = $0]) ifTrue: [
							zeroFound := true.
							s next.
							group := (key endsWith: 'CELL')
								ifTrue: [-1]
								ifFalse: [0].
							newValue nextPutAll: '+49 '].
						s peek isDigit ifTrue: [
							group := group + 1.
							newValue nextPut: s next].
						group = 2 ifTrue: [
							group := 0.
							newValue nextPut: Character space].
						(s peek notNil and: [s peek isDigit not]) ifTrue: [s next].
				] ]].
			(value atLast: 2) = Character space ifTrue: [
				value := (value first: value size - 2), value last].
			value := value withBlanksTrimmed.
			].
		
		
		((key beginsWith: 'FN') or: [key beginsWith: 'N']) ifTrue: [
			value encodeForHTTP in: [:encoded |
				encoded ~= value ifTrue: [
					key := key, ';ENCODING=QUOTED-PRINTABLE;CHARSET=utf-8'.
					value := encoded copyReplaceAll: '%' with: '=']]].
		
		new := new, key, ':', value, String cr, String lf].
	raw := new.