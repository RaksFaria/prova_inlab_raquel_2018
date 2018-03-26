Dado("que tenha selecionado três produtos no carrinho") do
      @AcessarSite = AcessarSiteDemoQa.new
      @AcessarSite.load
      @Adicionar_Item_Carrinho = AdicionarTresItens.new
      @Adicionar_Item_Carrinho.add_item_carrinho
  end
  
Quando("clicar no carrinho de compra") do
   @Clicar_carrinho_compra = AdicionarTresItens.new
   @Clicar_carrinho_compra.clicar_carrinho_compra
  end
  
Entao("é validado que a quantidades de itens adicionados esta correta") do
  @Valida_qtde_itens_carrinho = AdicionarTresItens.new
  @Valida_qtde_itens_carrinho.validar_item_carrinho
  end