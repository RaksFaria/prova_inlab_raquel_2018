Foi criado 3 cenários para a prova final do Inlabs

Cenário 1: Adicionar 3 itens para compra e validar-los dentro do carrinho
           Contém feature de nome "adicionar_tres_itens_carrinho" na pasta feature
           Contém o Page Object de nome "adicionar_tres_itens_carrinho_page" na pasta Page
           Contém o step de nome "adicionar_tres_itens_carrinho_steps" na pasta step_definitions
           Executar na linha de comando usando tag "cucumber -t @additenscarrinho" ou "cucumber -p add_3_item_carrinho"


Cenário 2: Realizar compra de um produto no site store.demoqa.com, verificar o valor final da compra e verificar se há cobrança de frete.
           Contém feature de nome "comprar_produto" na pasta feature
           Contém o Page Object de nome "comprar_produto_page" na pasta page
           Contém o step de nome "comprar_produto_step" na pasta step_definitions
           Executar na linha de comando usando tag "cucumber -t @comprarproduto" ou "cucumber -p comprar_produto"


Cenário 3: Adicionar 3 itens para compra e remover o item mais caro.
           Contém feature de nome "remover_item_mais_caro_carrinho"
           Contém o Page Object de nome "retirar_item_mais_caro_carrinho_page" na pasta page
           Contém o step de nome "retirar_item_mais_caro_carrinho_steps" na pasta step_definitions
           Executar na linha de comando usando tag "cucumber -t @retiraritemcaro" ou "cucumber -p retirar_item_mais_caro_carrinho"
