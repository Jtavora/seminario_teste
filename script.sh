#!/bin/bash

# Códigos de cor
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
NC='\033[0m' # Sem cor

# Verifica se o Node.js está instalado
if ! command -v node &> /dev/null
then
    echo -e "${RED}Node.js não está instalado. Instale o Node.js primeiro.${NC}"
    exit 1
fi

# Instala as dependências do projeto
echo -e "${GREEN}Instalando as dependências do projeto...${NC}"
npm install

# Instala Gauge e HTTP Server globalmente
echo -e "${GREEN}Instalando Gauge e HTTP Server globalmente...${NC}"
npm install -g @getgauge/cli
npm install -g http-server

# Inicia o HTTP Server em segundo plano
echo -e "${GREEN}Iniciando o HTTP Server...${NC}"
http-server &

# Obtém o PID do processo http-server
HTTP_SERVER_PID=$!

# Aguarda o servidor HTTP iniciar
sleep 5

# Executa os testes
echo -e "${GREEN}Executando os testes...${NC}"
npm test

# Exibe a URL do relatório do Gauge com cor
echo -e "${YELLOW}Relatório do Gauge disponível em:${NC}"
echo -e "${BLUE}http://localhost:8080/reports/html-report/${NC}"

# Informa o usuário sobre o status do HTTP Server
echo -e "${GREEN}O HTTP Server está rodando. Pressione Ctrl+C para encerrá-lo quando terminar de visualizar o relatório.${NC}"

# Aguarda a interrupção manual (Ctrl+C)
wait $HTTP_SERVER_PID

echo -e "${GREEN}Processo concluído.${NC}"
