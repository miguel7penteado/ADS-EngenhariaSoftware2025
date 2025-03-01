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

// Janela para Clientes
class JanelaClientes : public TWindow {
public:
    JanelaClientes() : TWindow(TRect(2, 2, 40, 10), "Clientes") {
        TLabel* label = new TLabel(TRect(2, 2, 38, 3), "CRUD de Clientes");
        insert(label);
    }
};

// Janela para Fornecedores
class JanelaFornecedores : public TWindow {
public:
    JanelaFornecedores() : TWindow(TRect(2, 2, 40, 10), "Fornecedores") {
        TLabel* label = new TLabel(TRect(2, 2, 38, 3), "CRUD de Fornecedores");
        insert(label);
    }
};

// Janela para Produtos
class JanelaProdutos : public TWindow {
public:
    JanelaProdutos() : TWindow(TRect(2, 2, 40, 10), "Produtos") {
        TLabel* label = new TLabel(TRect(2, 2, 38, 3), "CRUD de Produtos");
        insert(label);
    }
};

// Janela para Relatórios
class JanelaRelatorios : public TWindow {
public:
    JanelaRelatorios() : TWindow(TRect(2, 2, 40, 10), "Relatórios") {
        TLabel* label = new TLabel(TRect(2, 2, 38, 3), "CRUD de Relatórios");
        insert(label);
    }
};

class MeuAplicativo : public TApplication {
public:
    MeuAplicativo();
    void handleEvent(Event& event);
};

MeuAplicativo::MeuAplicativo() : TApplication()
{
    TMenuBar* menuBar = new TMenuBar(
        TRect(0, 0, getWidth(), 1),
        new TMenu(
            *new TSubMenu("Cadastro", kbAltC) +
            *new TMenuItem("Clientes", cmClientes, kbNoKey, hcNoContext, "") +
            *new TMenuItem("Fornecedores", cmFornecedores, kbNoKey, hcNoContext, "") +
            *new TMenuItem("Produtos", cmProdutos, kbNoKey, hcNoContext, "") +
            *new TSubMenu("Relatórios...", cmRelatorios) +
            *new TMenuItem("Opções1", cmOpcoes1, kbNoKey, hcNoContext, "") +
            *new TMenuItem("Opções2", cmOpcoes2, kbNoKey, hcNoContext, ""))
    );

    TView* desktop = new TDesktop(TRect(0, 1, getWidth() - 1, getHeight() - 1));

    insert(menuBar);
    insert(desktop);

}

void MeuAplicativo::handleEvent(Event& event) {
    Application::handleEvent(event);
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
        }
    }
}

int main() {
    MeuAplicativo meuAplicativo;
    meuAplicativo.run();
    return 0;
}

