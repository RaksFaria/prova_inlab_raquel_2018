class RetirarItemCaro < SitePrism::Page
   
     element :productcategory, :css, '#menu-item-33 > a'
     
     element :additem1, :css, '#default_products_page_container > div.default_product_display.product_view_32.product-category.group > div.productcol > form > div.wpsc_buy_button_container.group > div.input-button-buy > span > input'
     element :additem2, :css, '#default_products_page_container > div.default_product_display.product_view_40.product-category.group > div.productcol > form > div.wpsc_buy_button_container.group > div.input-button-buy > span > input'
     element :additem3, :css, '#default_products_page_container > div.default_product_display.product_view_64.product-category.group > div.productcol > form > div.wpsc_buy_button_container.group > div.input-button-buy > span > input'
     
     element :checkout, :css, '#header_cart > a > span.icon'

     element :excluiritem1, :css, "#checkout_page_container > div.slide1 > table > tbody > tr.product_row.product_row_0.alt > td.wpsc_product_remove.wpsc_product_remove_0 > form > input[type='submit']:nth-child(4)"
     element :excluiritem2, :css, "#checkout_page_container > div.slide1 > table > tbody > tr.product_row.product_row_1 > td.wpsc_product_remove.wpsc_product_remove_1 > form > input[type='submit']:nth-child(4)"
     element :excluiritem3, :css, "#checkout_page_container > div.slide1 > table > tbody > tr.product_row.product_row_2.alt > td.wpsc_product_remove.wpsc_product_remove_2 > form > input[type='submit']:nth-child(4)"

     element :waitfor, :css, '#default_products_page_container > div.default_product_display.product_view_32.product-category.group > div.productcol > form > div.wpsc_buy_button_container.group > div.input-button-buy > div.alert.addtocart > p'

     element :primeiro_produto, :css, '#checkout_page_container > div.slide1 > table > tbody > tr.product_row.product_row_0.alt > td:nth-child(4) > span'
     element :segundo_produto, :css, '#checkout_page_container > div.slide1 > table > tbody > tr.product_row.product_row_1 > td:nth-child(4) > span'
     element :terceiro_produto, :css, '#checkout_page_container > div.slide1 > table > tbody > tr.product_row.product_row_2.alt > td:nth-child(4) > span'

    element :verifica_retirada_produto, :css, '#header_cart > a > em.count'

    def adicionar_tres_produtos
        productcategory.click  

        additem1.click
        additem2.click
        additem3.click

        wait_for_waitfor
    end
    
     def retirarmaiscaro 
       
        checkout.click
        
       
        item1 = primeiro_produto.text.sub! '$',''
        a=item1.to_f
        puts a
        item2 = segundo_produto.text.sub! '$',''
        b=item2.to_f
        puts b
        item3 = terceiro_produto.text.sub! '$',''
        c=item3.to_f
        puts c
     
        produtos = [a,b,c]

        item_mais_caro = produtos.max
             
        
        if a ==item_mais_caro
            excluiritem1.click
         elsif b==item_mais_caro
            excluiritem2.click
        else
            excluiritem3.click
        end
        
    end
    def verificar_a_retirada_do_item_caro
        valida_retirada_produto = verifica_retirada_produto.text
        validando_retirada_produto = valida_retirada_produto.to_i
        if valida_retirada_produto==2
            return true 
        end
    end

 end

