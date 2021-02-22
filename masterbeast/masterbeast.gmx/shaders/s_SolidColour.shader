//
// Simple passthrough vertex shader
//
attribute vec3 in_Position;                  // (x,y,z)
//attribute vec3 in_Normal;                  // (x,y,z)     unused in this shader.	
attribute vec4 in_Colour;                    // (r,g,b,a)
attribute vec2 in_TextureCoord;              // (u,v)

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 object_space_pos = vec4( in_Position.x, in_Position.y, in_Position.z, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
    
    v_vColour = in_Colour;
    v_vTexcoord = in_TextureCoord;
}

//######################_==_YOYO_SHADER_MARKER_==_######################@~
//
// Simple passthrough fragment shader
//
uniform vec3 Colour;
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
vec4 Base = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord ); //Grab the current pixel
    if (Base.a <= 0.75) { //Alpha test value. 192/255 = 0.75
        discard;
    }
    gl_FragColor = vec4(Colour.rgb,1.0); //If the pixel is not discarded, apply the uniform colour with full alpha
}

