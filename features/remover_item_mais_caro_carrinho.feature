#language: pt
#utf-8


Funcionalidade: Adicionar 3 itens para compra e remover o item mais caro
    Eu como usuario do site demoqa
    Quero Adicionar três itens no carrinho 
    Para que eu possa retirar o item mais caro

@retiraritemcaro
    Cenario: Adicionar 3 itens para compra e remover o item mais caro
    Dado que tenha adicionado três itens no carrinho
    Quando retirar o item mais caro do carrinho
    Entao a retirada do item é efetuada com sucesso 