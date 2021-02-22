///SadDecayRateModifiers()

SadDecayMod = 0.0008 + (((0.0008 * 2) / 100) * (100 - mCreatureController.Alive)) + (mDriveCollectionMaster.RitualInternalMod / 500)

return SadDecayMod
