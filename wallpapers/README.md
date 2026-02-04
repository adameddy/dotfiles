# Wallpapers

## Split wide wallpapers into smaller images for multiple monitors

### Requirements

`ImageMagick`

### Example Command

`magick convert input.png -crop 50%x100% +repage output-%d.png`
