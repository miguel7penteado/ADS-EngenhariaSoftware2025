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


#include <tvision/tv.h>




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

// construtor do classe TipoJanelaPrincipalERPAgrotec que 
// vai gerar um objeto "Janela Principal" na função main()
TipoJanelaPrincipalERPAgrotec::TipoJanelaPrincipalERPAgrotec() : TProgInit(&TipoJanelaPrincipalERPAgrotec::iniciarLinhaDeStatus, &TipoJanelaPrincipalERPAgrotec::iniciarBarraMenus,&TipoJanelaPrincipalERPAgrotec::initDeskTop)
{

}

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

void TipoJanelaPrincipalERPAgrotec::handleEvent(TEvent& parametro_evento_mouse)
{
    TApplication::handleEvent( parametro_evento_mouse );

    if (parametro_evento_mouse.what == evCommand)
    {
        switch (parametro_evento_mouse.message.command)
        {
        case GreetThemCmd:
            desenhaCaixaBoasVindas();
            clearEvent(parametro_evento_mouse);
            break;
        default:
            break;
        }
    }
}

TMenuBar* TipoJanelaPrincipalERPAgrotec::iniciarBarraMenus(TRect parametro_tamanho)
{

    parametro_tamanho.b.y = parametro_tamanho.a.y + 1;

    return new TMenuBar(parametro_tamanho,
                                         *new TSubMenu("~B~om Dia", kbAltH) +
                                         *new TMenuItem("~Me~nsagem boas vindas...", GreetThemCmd, kbAltG) +
                                         newLine() +
                                         *new TMenuItem("~S~air", cmQuit, cmQuit, hcNoContext, "Alt-S")
    );

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

int main()
{
    TipoJanelaPrincipalERPAgrotec janelaPrincipal;
    janelaPrincipal.run();
    return 0;
}
