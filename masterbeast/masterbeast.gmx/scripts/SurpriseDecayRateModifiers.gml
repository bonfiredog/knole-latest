///SurpriseDecayRateModifiers()

SurpriseDecayMod = 0.03 + (((0.4) / 100) * (100 - mCreatureController.Alive)) + (mDriveCollectionMaster.RitualInternalMod / 500)

return SurpriseDecayMod
