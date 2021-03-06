#version 300 es

precision highp float;

in vec4 v_color;
in vec3 v_normal;
in vec4 v_position;
in vec3 wire;

layout(location = 0) out vec4 f_color;
layout(location = 1) out vec3 f_normal;
layout(location = 2) out vec4 f_position;


float edgeFactor(){
    vec3 d = fwidth(wire);
    vec3 a3 = smoothstep(vec3(0.0), d * 1.5, wire);
    return min(min(a3.x, a3.y), a3.z);
}

void main() {

    // wireframe
    // vec3 wireColor = v_color.rgb + 0.75;
    // f_color.rgb = mix(wireColor , v_color.rgb, edgeFactor());


    f_color = v_color;
    f_normal = v_normal;
    f_position = v_position;
}