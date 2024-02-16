#language: pt

Funcionalidade: Uso de cupons no Checkout
    Como um usuário da Starbugs, Eu quero poder aplicar cupons de desconto na página de checkout 
    Para que eu possa obter reduções no preço de produtos, aumentando a satisfação com a minha experiência de compra.

    Contexto:
    Dado que iniciei a compra do item:
        | name     | Café com Leite |
        | price    | R$ 19,99       |
        | delivery | R$ 10,00       |
        | total    | R$ 29,99       |
    

## Cenário especificado para automação
    Cenário: Aplicar desconto de 20%

    Quando aplico o seguinte cupom: "MEUCAFE"
    Então o valor final da compra deve ser atualizado para "R$ 25,99"


    Esquema do Cenário: Tentativa de aplicar o desconto

      Quando aplico o seguinte cupom: "<cupom>"
    Então devo ver a notificação "<saida>"
        E o valor da compra deve permanecer o mesmo

    Exemplos:
    | cupom    | saida           |
    | PROMO20  | Cupom expirado! |
    | PROMO100 | Cupom inválido! |


## Exemplo de Cenário especificado para uso do BDD(colaborando para o processo de desenvolvimento)
   @ignore
    Cenário: Aplicar desconto de 20%
        O usuário deve ser capaz de aplicar um cupom de 20% de desconto válido no checkout.
        O desconto deve ser aplicado apenas ao valor do produto e o valor final deve ser recalculado corretamente.

    Dado que estou na página de Checkout
        E o item que está no meu carrinho é o Café com Leite no valor de R$ 19,99
        E que a taxa de entrega é de R$ 10,00
        E o valor total é de R$ 29,99
        E tenho um cupom com 20% de desconto "MEUCAFE"
    Quando aplico esse cupom de desconto
    Então o desconto de 20% deve ser aplicado apenas no valor do Café com Leite
        E o valor final da compra deve ser atualizado para R$ 25,99