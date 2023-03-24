"
Maybank
"
Class {
	#name : #MGMaybank,
	#superclass : #MGVendor,
	#category : #MyGold
}

{ #category : #acccessing }
MGMaybank class >> url [ 
^ 'https://www.maybank2u.com.my/maybank2u/malaysia/en/personal/rates/gold_and_silver.page'
]

{ #category : #assertions }
MGMaybank >> checkDateTimeValue: aString [
self assert: (aString beginsWith: 'Effective on ')
]

{ #category : #'as yet unclassified' }
MGMaybank >> getProductGroups [
	^ {MGMaybankSilverInvestmentAccount. MGMaybankGoldInvestmentAccount.
	MGMaybankGoldBullion}
]
