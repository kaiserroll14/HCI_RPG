//tile_fill_object(object, tile);

var object = argument[0];
var tile = argument[1];

var tile_width = background_get_width(tile);
var tile_height = background_get_height(tile);

for (var row = 0; row<object.image_yscale; row++){
    for(var col = 0; row<object.image_xscale; col++){
        tile_add(tile, 0, 0, tile_width, tile_height, object.x+(col*tile_width), object.y+(row*tile_height), object.depth);
    }
}
