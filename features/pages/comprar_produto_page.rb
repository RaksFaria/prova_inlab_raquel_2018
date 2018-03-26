class ComprarProduto < SitePrism::Page

     element :productcategory, :css, '#menu-item-33 > a'
     element :addcarrinho, :css, '#default_products_page_container > div.default_product_display.product_view_32.product-category.group > div.productcol > form > div.wpsc_buy_button_container.group > div.input-button-buy > span > input'
     element :checkout, :css, '#header_cart > a > span.icon'
     element :botao_continue, :css, '#checkout_page_container > div.slide1 > a > span' 
     element :pais_frete, '#uniform-current_country'
     element :calcula_frete, '#change_country > input[type="submit"]:nth-child(6)'
     element :email, "#wpsc_checkout_form_9"
     element :primeiro_nome, "#wpsc_checkout_form_2"
     element :sebrenome, "#wpsc_checkout_form_3"
     element :endereco, "#wpsc_checkout_form_4"
     element :cidade, "#wpsc_checkout_form_5"
     element :estado, "#wpsc_checkout_form_6"
     element :pais, "#uniform-wpsc_checkout_form_7"
     element :cep, "#wpsc_checkout_form_8"
     element :telefone, "#wpsc_checkout_form_18"
     element :estado2, "#wpsc_checkout_form_15"
     element :salvar_cadastro, :css, "#wpsc_shopping_cart_container > form > div.wpsc_make_purchase > div > div > span > input"
     element :waitfor, :css, '#default_products_page_container > div.default_product_display.product_view_32.product-category.group > div.productcol > form > div.wpsc_buy_button_container.group > div.input-button-buy > div.alert.addtocart > p'
     element :validar_compra, :css, '#post-30 > div > div.wpsc-transaction-results-wrap > p:nth-child(5)'

     def comprarproduto paisfrete, escreveemail, name, segundonome, address, city, state, country, postalcode, phone, state2
        productcategory.click   
        addcarrinho.click
        wait_for_waitfor
        checkout.click
        botao_continue.click
        pais_frete.select(paisfrete)
        calcula_frete.click
        email.set(escreveemail)
        primeiro_nome.set(name)
        sebrenome.set(segundonome)
        endereco.set(address)
        cidade.set(city)
        estado.set(state)
        pais.select(country)
        cep.set(postalcode)
        telefone.set(phone)
        estado2.set(state2)
        salvar_cadastro.click                       
    end
    
    def verificar_compra_efetuada 
        verifica_compra_efetuada = validar_compra.text
        puts verifica_compra_efetuada  
    end
 end