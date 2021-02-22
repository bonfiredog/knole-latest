///ConvertWindDToReal(Direction)

Direction = argument0
ConvertedDirection = 0

if Direction = "E" {
ConvertedDirection = 0
} else if Direction = "ENE" {
ConvertedDirection = 22.5
} else if Direction = "NE" {
ConvertedDirection = 45
} else if Direction = "NNE" {
ConvertedDirection = 67.5
} else if Direction = "N" {
ConvertedDirection = 90
} else if Direction = "NNW" {
ConvertedDirection = 112.5
} else if Direction = "NW" {
ConvertedDirection = 135
} else if Direction = "WNW" {
ConvertedDirection = 157.5
} else if Direction = "W" {
ConvertedDirection = 180
} else if Direction = "WSW" {
ConvertedDirection = 202.5
} else if Direction = "SW" {
ConvertedDirection = 225
} else if Direction = "SSW" {
ConvertedDirection = 247.5
} else if Direction = "S" {
ConvertedDirection = 270
} else if Direction = "SSE" {
ConvertedDirection = 292.5
} else if Direction = "SE" {
ConvertedDirection = 315
} else if Direction = "ESE" {
ConvertedDirection = 337.5
}

return ConvertedDirection
