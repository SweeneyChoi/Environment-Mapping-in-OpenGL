#version 430 core

in vec3 Normal;
in vec3 FragPos;
out vec4 FragColor;
uniform vec3 cameraPos;
uniform samplerCube skybox;

void main() {
	float radio = 1.00 / 1.52;
	vec3 I = normalize(FragPos - cameraPos);
	vec3 R = refract(I, normalize(Normal), radio);
	FragColor = vec4(texture(skybox, R).rgb, 1.0);
}