#version 460 core
#include <flutter/runtime_effect.glsl> 

uniform vec2 uSize;
uniform vec4 uColor;

out vec4 FragColor;

void main(){
    
    vec2 pixel = gl_FragCoord.xy / uSize;

    // Ancho de las líneas y espaciado entre líneas
    float lineWidth = 0.003; // Ajusta el ancho de las líneas
    float lineSpacing = 0.008; // Ajusta el espaciado entre líneas

    // Calcula las coordenadas de las líneas diagonales más cercanas
    float diagonalCoord1 = mod(pixel.x + pixel.y, lineSpacing);
    float diagonalCoord2 = mod(pixel.x - pixel.y, lineSpacing); // Dirección contraria

    // Determina si el fragmento se encuentra en una línea diagonal en ambas direcciones
    float isInDiagonal1 = step(lineWidth, diagonalCoord1);
    float isInDiagonal2 = step(lineWidth, diagonalCoord2);

    // Combina las líneas en ambas direcciones
    float isInDiagonal = max(isInDiagonal1, isInDiagonal2);

    // Color de las líneas (más claro que uColor)
    vec4 lineColor = uColor - vec4(0.05, 0.05, 0.05, 0.0); // Ajusta los valores para hacerlo más claro

    // Mezcla el color del fondo y el color de las líneas
    FragColor = mix(lineColor, uColor, isInDiagonal);
}