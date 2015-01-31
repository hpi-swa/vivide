as yet unclassified
tallyPath: context by: count
	| aMethod path |
	aMethod := context method.
	
	"Find the correct child (if there)"
	receivers do: [ :oldTally | 
		oldTally method == aMethod ifTrue: [path := oldTally]].
	
	"Add new child if needed"
	path ifNil: [
		path := self class new
			class: context receiver class method: aMethod;
			isExecutingBlock: context isExecutingBlock.
		path reportOtherProcesses: reportOtherProcesses.
		receivers := receivers copyWith: path].
	path lastPc: context pc.
	^ path bumpBy: count