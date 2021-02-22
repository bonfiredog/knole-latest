while (ds_grid_height(mAttentionSubController.AttentionList) > 1) {
DSGridDeleteRow(mAttentionSubController.AttentionList,(ds_grid_height(mAttentionSubController.AttentionList) - 1))
ds_grid_clear(mAttentionSubController.AttentionList, -1)
}
