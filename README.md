# Documentação para Executar Testes com Gauge e Taiko

Esta documentação descreve o processo para configurar e executar testes utilizando Gauge e Taiko. Siga os passos abaixo para garantir que seu ambiente esteja corretamente configurado e os testes possam ser executados com sucesso.

## Passo 1: Instalar o Node.js

Primeiramente, é necessário ter o Node.js instalado no seu sistema. Recomenda-se usar o [nvm (Node Version Manager)](https://github.com/nvm-sh/nvm) para gerenciar a instalação do Node.js.

1. **Instalar o nvm (se ainda não estiver instalado):**
   - Abra o terminal e execute o seguinte comando para baixar o script de instalação do nvm:
     ```bash
     curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
     ```
   - Após a instalação, adicione o `nvm` ao seu perfil de shell (se necessário):
     ```bash
     export NVM_DIR="$HOME/.nvm"
     [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
     [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
     ```

2. **Instalar o Node.js utilizando o nvm:**
   - Verifique a versão do Node.js disponível:
     ```bash
     nvm list-remote
     ```
   - Instale a versão desejada (substitua `vX.X.X` pela versão desejada):
     ```bash
     nvm install vX.X.X
     ```
   - Defina a versão instalada como a versão padrão:
     ```bash
     nvm use vX.X.X
     ```

## Passo 2: Instalar Dependências

1. **Instalar as dependências do projeto (Taiko):**
   - Navegue até o diretório do seu projeto e execute o comando:
     ```bash
     npm install
     ```

2. **Instalar Gauge e HTTP Server globalmente:**
   - Execute os seguintes comandos:
     ```bash
     npm install -g @getgauge/cli
     npm install -g http-server
     ```

## Passo 3: Executar o Script de Automação

1. **Tornar o script executável:**
   - No terminal, navegue até o diretório do seu projeto e execute o comando:
     ```bash
     chmod +x script.sh
     ```

2. **Executar o script:**
   - Execute o script com o comando:
     ```bash
     ./script.sh
     ```

   O script instalará as dependências, iniciará o servidor HTTP, executará os testes e exibirá a URL do relatório.

## Passo 4: Encerrar

Após a execução dos testes, o servidor HTTP será encerrado automaticamente pelo script. Caso esteja rodando em um terminal separado, você pode interrompê-lo manualmente pressionando `Ctrl+C`.

## Notas Adicionais

- Certifique-se de que todas as dependências estejam corretamente instaladas e configuradas antes de executar os testes.
- Verifique se o Gauge e o Taiko estão corretamente configurados no seu projeto.

Se você encontrar algum problema durante o processo, consulte a [documentação oficial do Gauge](https://gauge.org/) e [documentação oficial do Taiko](https://taiko.dev/) para obter mais informações e suporte.