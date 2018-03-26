#language: pt
#utf-8


Funcionalidade: Adicionar 3 itens para compra e validar-los dentro do carrinho
    Eu como usuario do site demoqa
    Quero Adicionar três itens no carrinho 
    Para que eu possa retirar o item mais caro

@additenscarrinho
    Cenario: Adicionar 3 itens para compra e validar-los dentro do carrinho
    Dado que tenha selecionado três produtos no carrinho
    Quando clicar no carrinho de compra
    Entao é validado que a quantidades de itens adicionados esta correta