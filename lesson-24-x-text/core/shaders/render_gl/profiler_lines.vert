#version 330 core

layout (location = 0) in vec2 Position;
layout (location = 1) in vec4 Color;

uniform mat4 ViewProjection;

out VS_OUTPUT {
    vec4 Color;
} OUT;

void main()
{
    gl_Position = ViewProjection * vec4(Position, 0.0, 1.0);
    OUT.Color = Color;
}