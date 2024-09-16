const { openBrowser, goto, write, click, textBox, button, closeBrowser, title, text } = require('taiko');
const assert = require('assert');

step("Abrir o navegador", async () => {
    await openBrowser({ headless: false });
});

step("Navegar para a página de login", async () => {
    await goto('http://localhost:8080/login.html');
});

step("Digitar <usuario> no campo de texto <campo>", async (usuario, campo) => {
    await write(usuario, textBox({ placeholder: campo }));
});

step("Digitar a <senha> no campo de texto <campo>", async (senha, campo) => {
    await write(senha, textBox({ placeholder: campo }));
});

step("Clicar no botão <botao>", async (botao) => {
    await click(button(botao));
});

step("Verificar mensagem de erro <mensagem>", async (mensagem) => {
    const errorMessage = await text(mensagem).exists();
    assert.ok(errorMessage, `A mensagem de erro "${mensagem}" deveria estar visível`);
});

step("Verificar que o título da página é <titulo>", async (titulo) => {
    const pageTitle = await title();
    assert.strictEqual(pageTitle, titulo, `O título da página deveria ser ${titulo}, mas foi ${pageTitle}`);
});

step("Fechar o navegador", async () => {
    await closeBrowser();
});