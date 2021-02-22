///CreateDebugButtons()

EmailButton = instance_create(x,y,mDebugTopButton)
EmailButton.RelativeX = 250
EmailButton.RelativeY = 330
EmailButton.RelativeXScale = 0.25
EmailButton.RelativeYScale = 0.22
EmailButton.Text = "Feedback"
EmailButton.URL = "https://goo.gl/forms/2uGCrpYm8zH082YV2"
EmailButton.sprite_index = sDebugButton1

GithubButton = instance_create(x,y,mDebugTopButton)
GithubButton.RelativeX = 340
GithubButton.RelativeY = 330
GithubButton.RelativeXScale = 0.25
GithubButton.RelativeYScale = 0.22
GithubButton.Text = "Github"
GithubButton.URL = "https://github.com/bonfiredog/knole"
GithubButton.sprite_index = sDebugButton1

WebsiteButton = instance_create(x,y,mDebugTopButton)
WebsiteButton.RelativeX = 430
WebsiteButton.RelativeY = 330
WebsiteButton.RelativeXScale = 0.25
WebsiteButton.RelativeYScale = 0.22
WebsiteButton.Text = "Twitter"
WebsiteButton.URL = "https://twitter.com/rob_sherman"
WebsiteButton.sprite_index = sDebugButton1

TwitterButton = instance_create(x,y,mDebugTopButton)
TwitterButton.RelativeX = 520
TwitterButton.RelativeY = 330
TwitterButton.RelativeXScale = 0.25
TwitterButton.RelativeYScale = 0.22
TwitterButton.Text = "Website"
TwitterButton.URL = "https://bonfiredog.co.uk/knole"
TwitterButton.sprite_index = sDebugButton1

instance_create(x,y,mDebugLogButton)
instance_create(x,y,mDebugWipeLogButton)
instance_create(x,y,mDebugScrollMarker)
instance_create(x,y,mDebugStopFlickerButton)
instance_create(x,y,mDebugNoViewportFilterButton)
instance_create(x,y,mDebugEnviroLightButton)
instance_create(x,y,mDebugObjectLightButton)
instance_create(x,y,mWeatherToggleButton)
instance_create(x,y,mDebugPrintConceptsButton)
instance_create(x,y,mDebugTabooToggle)
instance_create(x,y,mDebugFingerToggleButton)
