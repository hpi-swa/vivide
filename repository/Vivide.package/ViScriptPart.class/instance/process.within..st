as yet unclassified
process: someObjects within: aContext

	| result |
	result := OrderedCollection new.
	definition block value: someObjects value: result.
	^ result 