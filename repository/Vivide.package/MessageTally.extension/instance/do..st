*vivide-artifacts-support
do: aBlock

	aBlock value: self.
	receivers do: [:aMessageTally | aMessageTally do: aBlock].