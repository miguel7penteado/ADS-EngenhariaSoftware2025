/*---------------------------------------------------------*/
/*                                                         */
/*   Turbo Vision Hello World Demo Source File             */
/*                                                         */
/*---------------------------------------------------------*/
/*
 *      Turbo Vision - Version 2.0
 *
 *      Copyright (c) 1994 by Borland International
 *      All Rights Reserved.
 *
 */

#define Uses_TKeys
#define Uses_TApplication
#define Uses_TEvent
#define Uses_TRect
#define Uses_TDialog
#define Uses_TStaticText
#define Uses_TButton
#define Uses_TMenuBar
#define Uses_TSubMenu
#define Uses_TMenuItem
#define Uses_TStatusLine
#define Uses_TStatusItem
#define Uses_TStatusDef
#define Uses_TDeskTop

#define cmClientes 
#define cmFornecedores
#define cmProdutos
#define cmRelatorios

#define relClientes
#define relFornecedores
#define relProdutos


#include <tvision/tv.h>
#include <tvision/dialogs.h>

//=================
// Janela para Clientes
class JanelaClientes : public TWindow 
{
    public:
    JanelaClientes() : TWindow(TRect(2, 2, 40, 10), "Clientes") 
    {
        //TLabel *label = new TLabel(TRect(2, 2, 38, 3), "CRUD de Clientes");
        //insert(label);
    }
};

// Janela para Fornecedores
class JanelaFornecedores : public TWindow {
public:
    JanelaFornecedores() : TWindow(TRect(2, 2, 40, 10), "Fornecedores") {
        //TLabel *label = new TLabel(TRect(2, 2, 38, 3), "CRUD de Fornecedores");
        //insert(label);
    }
};

// Janela para Produtos
class JanelaProdutos : public TWindow {
public:
    JanelaProdutos() : TWindow(TRect(2, 2, 40, 10), "Produtos") {
        //TLabel *label = new TLabel(TRect(2, 2, 38, 3), "CRUD de Produtos");
        //insert(label);
    }
};

// Janela para Relatórios
class JanelaRelatorios : public TWindow {
public:
    JanelaRelatorios() : TWindow(TRect(2, 2, 40, 10), "Relatórios") {
        //TLabel *label = new TLabel(TRect(2, 2, 38, 3), "CRUD de Relatórios");
        //insert(label);
    }
};
//=================




const int GreetThemCmd = 100;

class TipoJanelaPrincipalERPAgrotec : public TApplication
{

public:
    // construtor
    TipoJanelaPrincipalERPAgrotec();

    // metodos que desenham essa janela com menu e linha de status
    static TMenuBar* iniciarBarraMenus(TRect);
    static TStatusLine* iniciarLinhaDeStatus(TRect);

    // metodos que são disparados no evento do mouse
    virtual void handleEvent(TEvent& event);



private:

    void desenhaCaixaBoasVindas();
};


void TipoJanelaPrincipalERPAgrotec::desenhaCaixaBoasVindas()
{
    TDialog* caixaBoasVindas = new TDialog(TRect(25, 5, 95, 16), "Seja bem vindo ao ERP AGROTEC");

    caixaBoasVindas->insert(new TStaticText( TRect( 3,  5, 25,  6) , "Como vai voce ?"                          ) );
    caixaBoasVindas->insert(new TButton(     TRect(16,  2, 58,  4) , "Estou bem, Obrigado!" , cmCancel, bfNormal) );
    caixaBoasVindas->insert(new TButton(     TRect(16,  4, 58,  6) , "Estou Feliz,e voce ?" , cmCancel, bfNormal) );
    caixaBoasVindas->insert(new TButton(     TRect(16,  6, 58,  8) , "Estou com sono."      , cmCancel, bfNormal) );
    caixaBoasVindas->insert(new TButton(     TRect(16,  8, 58, 10) , "Estou empolgado."     , cmCancel, bfNormal) );

    deskTop->execView(caixaBoasVindas);
    destroy(caixaBoasVindas);
}

void TipoJanelaPrincipalERPAgrotec::handleEvent(TEvent& event)
{
    TApplication::handleEvent( event );

    if (event.what == evCommand) {
        switch (event.message.command) {
        case cmClientes: {
            JanelaClientes* janelaClientes = new JanelaClientes();
            deskTop->insert(janelaClientes);
            break;
        }
        case cmFornecedores: {
            JanelaFornecedores* janelaFornecedores = new JanelaFornecedores();
            deskTop->insert(janelaFornecedores);
            break;
        }
        case cmProdutos: {
            JanelaProdutos* janelaProdutos = new JanelaProdutos();
            deskTop->insert(janelaProdutos);
            break;
        }
        case cmRelatorios: {
            JanelaRelatorios* janelaRelatorios = new JanelaRelatorios();
            deskTop->insert(janelaRelatorios);
            break;
        }
        case relClientes: {

            break;
        }
        case relFornecedores: {

            break;
        }
        case relProdutos: {

            break;
        }
        }
    }


}

TMenuBar* TipoJanelaPrincipalERPAgrotec::iniciarBarraMenus(TRect parametro_tamanho)
{

    parametro_tamanho.b.y = parametro_tamanho.a.y + 1;

    TMenuBar* menuBar = new TMenuBar(
        parametro_tamanho,        
            *new TSubMenu("Cadastro", kbAltC) +
            *new TMenuItem("Clientes", cmClientes, kbNoKey, hcNoContext, "") +
            *new TMenuItem("Fornecedores", cmFornecedores, kbNoKey, hcNoContext, "") +
            *new TMenuItem("Produtos", cmProdutos, kbNoKey, hcNoContext, "") +
            *new TSubMenu("Relatórios...", cmRelatorios) +
            *new TMenuItem("Relatório Clientes", relClientes, kbNoKey, hcNoContext, "") +
            *new TMenuItem("Relatorio Fornecedores", relFornecedores, kbNoKey, hcNoContext, "") +
            *new TMenuItem("Relatorio Produtos", relProdutos, kbNoKey, hcNoContext, "")        
    );

    return menuBar;

/*    return new TMenuBar(parametro_tamanho,
                                         *new TSubMenu("Arquivo", kbAltH) +
                                         newLine() +
                                         *new TMenuItem("~S~air", cmQuit, cmQuit, hcNoContext, "Alt-S") +
                                         *new TSubMenu("Cadastros", kbAltH) +
                                         *new TMenuItem("Clientes...", GreetThemCmd, kbAltG) +
                                         *new TMenuItem("Fornecedores...", GreetThemCmd, kbAltG) +
                                         *new TMenuItem("Produtos...", GreetThemCmd, kbAltG) +
                                         newLine() +
                                         *new TMenuItem("Relatórios...", GreetThemCmd, kbAltG) +                                         
                                         *new TSubMenu("~E~stoque", kbAltH) +
                                         *new TMenuItem("Controle de Estoque...", GreetThemCmd, kbAltG) +
                                         newLine() +
                                         *new TMenuItem("Relatorio de Estoque...", GreetThemCmd, kbAltG)
    );

*/

}

TStatusLine* TipoJanelaPrincipalERPAgrotec::iniciarLinhaDeStatus(TRect parametro_tamanho)
{
    parametro_tamanho.a.y = parametro_tamanho.b.y - 1;
    return new TStatusLine(parametro_tamanho,
        *new TStatusDef(0, 0xFFFF) +
        *new TStatusItem("~Alt-X~ Sair", kbAltX, cmQuit) +
        *new TStatusItem(0, kbF10, cmMenu)
    );
}


// construtor do classe TipoJanelaPrincipalERPAgrotec que 
// vai gerar um objeto "Janela Principal" na função main()
TipoJanelaPrincipalERPAgrotec::TipoJanelaPrincipalERPAgrotec() : TProgInit(&TipoJanelaPrincipalERPAgrotec::iniciarLinhaDeStatus, 
                                                                           &TipoJanelaPrincipalERPAgrotec::iniciarBarraMenus, 
                                                                           &TipoJanelaPrincipalERPAgrotec::initDeskTop
                                                                          )
{

}



int main()
{
    TipoJanelaPrincipalERPAgrotec janelaPrincipal;
    janelaPrincipal.run();
    return 0;
}




