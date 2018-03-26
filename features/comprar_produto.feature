#language: pt
#utf-8


Funcionalidade: Realizar compra de um produto no site store.demoqa.com, verificar o valor final da compra e verificar se há cobrança de frete
    Eu como usuario do site demoqa
    Quero realizar um compra 
    Para que eu possa utilizar posteriormente

@comprarproduto
    Cenario: Realizar compra de um produto no site store.demoqa.com, verificar o valor final da compra e verificar se há cobrança de frete
    Dado que esteja no site store.demoqa.com
    Quando realizar a compra de um produto no site
    Entao a compra é realizada com sucesso
