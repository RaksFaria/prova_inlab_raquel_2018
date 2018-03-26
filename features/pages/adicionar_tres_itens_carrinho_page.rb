class AdicionarTresItens < SitePrism::Page
     
 
     element :productcategory, :css, '#menu-item-33 > a'
     element :additem1, :css, '#default_products_page_container > div.default_product_display.product_view_32.product-category.group > div.productcol > form > div.wpsc_buy_button_container.group > div.input-button-buy > span > input'
     element :additem2, :css, '#default_products_page_container > div.default_product_display.product_view_40.product-category.group > div.productcol > form > div.wpsc_buy_button_container.group > div.input-button-buy > span > input'
     element :additem3, :css, '#default_products_page_container > div.default_product_display.product_view_64.product-category.group > div.productcol > form > div.wpsc_buy_button_container.group > div.input-button-buy > span > input'
     element :checkout, :css, '#header_cart > a > span.icon'
     element :waitfor, :css, '#default_products_page_container > div.default_product_display.product_view_32.product-category.group > div.productcol > form > div.wpsc_buy_button_container.group > div.input-button-buy > div.alert.addtocart > p'
     element :qtdeitens, :css, '#header_cart > a > em.count'
    
 
    def add_item_carrinho
        productcategory.click   
        additem1.click
        additem2.click
        additem3.click
        wait_for_waitfor
    end         
       
       def clicar_carrinho_compra
        wait_for_waitfor
        checkout.click
       end
        
       def validar_item_carrinho
            
            quantidade_itens_carrinho = qtdeitens.text
            validador_quantidade_itens_carrinho = quantidade_itens_carrinho.to_i
            
            if validador_quantidade_itens_carrinho ==3
                return true
            end
            checkout.click
        end
        
 end