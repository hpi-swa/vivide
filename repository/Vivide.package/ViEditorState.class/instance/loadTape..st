loading - general
loadTape: aTape

	(self properties at: #columns) do: [:state |
		aTape addColumn loadState: state].