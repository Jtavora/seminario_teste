# Teste de Login

## Cenário: Login com credenciais inválidas
* Abrir o navegador
* Navegar para a página de login
* Digitar "teste" no campo de texto "Usuário"
* Digitar a "123" no campo de texto "Senha"
* Clicar no botão "Entrar"
* Verificar mensagem de erro "Usuário ou senha inválidos"
* Fechar o navegador

## Cenário: Login com credenciais válidas
* Abrir o navegador
* Navegar para a página de login
* Digitar "usuario" no campo de texto "Usuário"
* Digitar a "senha" no campo de texto "Senha"
* Clicar no botão "Entrar"
* Verificar que o título da página é "Dashboard"
* Fechar o navegador

## Cenário: Login com credenciais, porém sendo direcionado para a página errada
* Abrir o navegador
* Navegar para a página de login
* Digitar "usuario" no campo de texto "Usuário"
* Digitar a "senha" no campo de texto "Senha"
* Clicar no botão "Entrar"
* Verificar que o título da página é "teste123"
* Fechar o navegador
