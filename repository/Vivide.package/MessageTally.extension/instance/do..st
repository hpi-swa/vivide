*vivide-artifacts-support
do: aBlock

	aBlock value: self.
	self receiversSortedByCall do: [:aMessageTally | aMessageTally do: aBlock].