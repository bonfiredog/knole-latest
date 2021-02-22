///SetMoonPowerAndIntensity

switch mWorldController.TonightMoonPhase {
case "Full Moon":
TonightMoonAlpha = 0.82
break;

case "Waxing Gibbous":
TonightMoonAlpha = 0.85
break;

case "First Quarter":
TonightMoonAlpha = 0.9
break;

case "Waxing Crescent":
TonightMoonAlpha = 0.95
break;

case "New Moon":
TonightMoonAlpha = 0.97
break;

case "Waning Crescent":
TonightMoonAlpha = 0.95
break;

case "Third Quarter":
TonightMoonAlpha = 0.9
break;

case "Waning Gibbous":
TonightMoonAlpha = 0.85
break;

}
