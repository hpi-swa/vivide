connections and tuples
ownerChainPanes

	^ self ownerChain select: [:morph | (morph isKindOf: ViPane)]