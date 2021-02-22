///AngerDecayRateModifiers()

AngerDecayMod = 0.004 + (((0.004 * 3) / 100) * (100 - mCreatureController.Alive)) + (mDriveCollectionMaster.RitualInternalMod / 500)


return AngerDecayMod
