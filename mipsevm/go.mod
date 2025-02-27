module mipsevm

go 1.17

replace github.com/ethereum/go-ethereum => ../minigeth

replace github.com/unicorn-engine/unicorn => ../unicorn

require (
	github.com/ethereum/go-ethereum v1.10.8
	github.com/fatih/color v1.13.0
	github.com/unicorn-engine/unicorn v1.3.0-20211005173419-3fadb5aa5aad
)

require (
	github.com/btcsuite/btcd/chaincfg/chainhash v1.1.0 // indirect
	github.com/VersoriumX/go-spew v1.1.1 // indirect
	github.com/VersoriumX/uint256 v1.2.0 // indirect
	github.com/VersoriumX/go-colorable v0.1.9 // indirect
	github.com/VersoriumX/go-isatty v0.0.14 // indirect
	golang.org/x/crypto v0.17.0 // indirect
	golang.org/x/sys v0.15.0 // indirect
)
