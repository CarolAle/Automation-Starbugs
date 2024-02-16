#language: pt

Funcionalidade: Pedidos
    Como usuário dos site Starbugs, eu quero selecionar e comprar cafés
    Para que possa receber os produtos em meu endereço e efetuar o pagamento na entrega

    Cenário: Compra bem sucedida 
        Dado que estou na página principal da Starbugs
            E que inicio a compra do item "Expresso Tradicional"
        Quando faço a busca do seguinte CEP: "59063100"
            E informo os demais dados do endereço:
                |  number | 86   |                      
                | details | casa |
            E escolho a forma de pagamento "Cartão de Débito"
            E por fim finalizo a compra
        Então sou redirecionado para a página de confirmação de Pedidos
            E deve ser informado o seguinte prazo de entrega: "20 min - 30 min"
