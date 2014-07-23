instance creation
select: codeForSelectBlock
	"[:obj | obj value >= 5]."

	^ self transform: ('[:objects :context | objects select: {1}].' format: {codeForSelectBlock})