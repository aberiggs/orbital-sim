#version 330 core
layout (location = 0) in vec2 aPos;

uniform vec3 color;
uniform mat4 view;
uniform mat4 projection;
uniform mat4 model;

out vec3 vertexColor;

void main() {
    vertexColor = color;
    gl_Position = projection * view * model * vec4(aPos.x, aPos.y, 0.0, 1.0);
}