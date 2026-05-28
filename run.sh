#!/bin/bash

# 1. Compila todos os .java da pasta src/vimgame/ e joga os .class na pasta bin/
javac -cp "lib/lanterna-3.1.1.jar" -d bin src/vimgame/*.java

# Se a compilação falhar, o script para aqui
if [ $? -ne 0 ]; then
    echo "Erro na compilação."
    exit 1
fi

# 2. Executa o programa 
# O -cp avisa onde está a biblioteca (lib/) E onde estão as suas classes compiladas (bin/)
java -cp "lib/lanterna-3.1.1.jar:bin" vimgame.Main
