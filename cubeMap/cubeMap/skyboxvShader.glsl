#version 430 core

layout(location = 0) in vec3 position;
out vec3 TexCoords;

uniform mat4 view;
uniform mat4 projection;

void main() {
	TexCoords = position;
	vec4 aPos = projection * view * vec4(position, 1.0);
	gl_Position = aPos.xyww;
}
