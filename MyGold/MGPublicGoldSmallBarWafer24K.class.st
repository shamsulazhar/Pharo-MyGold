Class {
	#name : #MGPublicGoldSmallBarWafer24K,
	#superclass : #MGPublicGoldProductGroup,
	#category : #MyGold
}

{ #category : #assertions }
MGPublicGoldSmallBarWafer24K class >> checkHeader: aHeader [
	self assert: (aHeader at: 1) = 'Weight'.
	self assert: (aHeader at: 2) = 'PG Sell (RM) (Suggested Retail Price'.

]

{ #category : #constants }
MGPublicGoldSmallBarWafer24K class >> priceTableKey: aDictionary [
	^ aDictionary keys
		detect: [ :key | 
			| value |
			value := aDictionary at: key.
			value size = 5
				and: [ ((value at: 1) at: 2) = 'PG Sell (RM) (Suggested Retail Price'
						and: [ ((value at: 2) at: 1) = '0.5 gram'
								and: [ ((value at: 3) at: 1) = '1 gram'
										and: [ ((value at: 4) at: 1) = '1/2 Dinar' and: [((value at: 5) at: 1) = '5 gram'] ] ] ] ]]
]

{ #category : #initialization }
MGPublicGoldSmallBarWafer24K >> setData: aData [
	self weight: (aData at: 1).
	self pgSell: (aData at: 2).

]
