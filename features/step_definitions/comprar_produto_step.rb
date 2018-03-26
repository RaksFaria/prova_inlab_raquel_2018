Dado("que esteja no site store.demoqa.com") do
  @AcessarSite = AcessarSiteDemoQa.new
  @AcessarSite.load
  end
  
  Quando("realizar a compra de um produto no site") do
      @comprarproduto = ComprarProduto.new
      @comprarproduto.comprarproduto "Brazil", "harry.potter@hogwarts.com", "Harry", "Potter", "Rua Adolpho Bozzi", "Osasco", "São Paulo", "Brazil", "06086120", "12345678", "São Paulo"
     

  end 
  
  Entao("a compra é realizada com sucesso") do
    @Verificar_se_a_compra_foi_efetuada =  ComprarProduto.new   
    @Verificar_se_a_compra_foi_efetuada.verificar_compra_efetuada
     end