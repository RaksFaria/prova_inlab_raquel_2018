Dado("que tenha adicionado três itens no carrinho") do
  @AcessarSite = AcessarSiteDemoQa.new
  @AcessarSite.load
  @Adicionar_itens_para_retirar = RetirarItemCaro.new
  @Adicionar_itens_para_retirar.adicionar_tres_produtos
end

Quando("retirar o item mais caro do carrinho") do
  @retirar_item_caro_carrinho = RetirarItemCaro.new
  @retirar_item_caro_carrinho.retirarmaiscaro
end

Entao("a retirada do item é efetuada com sucesso") do
  @verificar_retirada_item_caro = RetirarItemCaro.new
  @verificar_retirada_item_caro.verificar_a_retirada_do_item_caro
end