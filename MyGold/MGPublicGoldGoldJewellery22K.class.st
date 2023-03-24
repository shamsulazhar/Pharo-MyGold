Class {
	#name : #MGPublicGoldGoldJewellery22K,
	#superclass : #MGPublicGoldProductGroup,
	#category : #MyGold
}

{ #category : #assertions }
MGPublicGoldGoldJewellery22K class >> checkHeader: aHeader [
	self assert: (aHeader at: 1) = 'Weight'.
	self assert: (aHeader at: 2) = 'PG Buy (RM'
]

{ #category : #constants }
MGPublicGoldGoldJewellery22K class >> priceTableKey: aDictionary [
	^ aDictionary keys
		detect: [ :key | 
			| value |
			value := aDictionary at: key.
			value size = 2
				and: [ ((value at: 1) at: 1) = 'Weight'
						and: [ ((value at: 1) at: 2) = 'PG Buy (RM'
								and: [ ((value at: 2) at: 1) = '1 gram' ] ] ] ]
]

{ #category : #initialization }
MGPublicGoldGoldJewellery22K >> setData: aData [
	self weight: (aData at: 1).
	self pgBuy: (aData at: 2)
]
