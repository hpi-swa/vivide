accessing - convenience
ownerChainPanes

	^ self ownerChain select: [:morph | (morph isKindOf: ViPane)]