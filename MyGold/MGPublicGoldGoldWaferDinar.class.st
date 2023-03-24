Class {
	#name : #MGPublicGoldGoldWaferDinar,
	#superclass : #MGPublicGoldProductGroup,
	#category : #MyGold
}

{ #category : #assertions }
MGPublicGoldGoldWaferDinar class >> checkHeader: aHeader [
	self assert: (aHeader at: 1) = 'Dinar'.
	self assert: (aHeader at: 2) = 'PG Sell (RM'.
	self assert: (aHeader at: 3) = 'PG Buy (RM'
]
