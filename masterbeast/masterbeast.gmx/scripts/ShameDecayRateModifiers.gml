///ShameDecayRateModifiers()

ShameDecayMod = 0.0008 - (((0.0008 * 0.75) / 100) * (100 - mCreatureController.Alive)) + (mDriveCollectionMaster.RitualInternalMod / 500)

return ShameDecayMod
