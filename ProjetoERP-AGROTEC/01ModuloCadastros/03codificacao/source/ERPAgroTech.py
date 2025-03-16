# -*- coding: utf-8 -*-

###########################################################################
## Python code generated with wxFormBuilder (version 4.2.1-0-g80c4cb6)
## http://www.wxformbuilder.org/
##
## PLEASE DO *NOT* EDIT THIS FILE!
###########################################################################

import wx
import wx.xrc

import gettext
_ = gettext.gettext


from CadastroClientes import TipoCadastroClientes
from CadastroFornecedores1 import TipoCadastroFornecedores

###########################################################################
## Class TipoJanelaPrincipal
###########################################################################

class TipoJanelaPrincipal ( wx.Frame ):

    def __init__( self, parent ):
        wx.Frame.__init__ ( self, parent, id = wx.ID_ANY, title = _(u"ERP AGROTEC - Entrega 01"), pos = wx.DefaultPosition, size = wx.Size( 641,514 ), style = wx.DEFAULT_FRAME_STYLE|wx.TAB_TRAVERSAL )

        self.SetSizeHints( wx.DefaultSize, wx.DefaultSize )

        self.TipoMenuPrincipal = wx.MenuBar( 0 )
        self.TipoMenuArquivo = wx.Menu()
        self.TipoMenuItemSair = wx.MenuItem( self.TipoMenuArquivo, wx.ID_ANY, _(u"Sair"), wx.EmptyString, wx.ITEM_NORMAL )
        self.TipoMenuArquivo.Append( self.TipoMenuItemSair )

        self.TipoMenuPrincipal.Append( self.TipoMenuArquivo, _(u"Arquivo") )

        self.TipoMenuCadastro = wx.Menu()
        self.TipoMenuItemClientes = wx.MenuItem( self.TipoMenuCadastro, wx.ID_ANY, _(u"Clientes"), wx.EmptyString, wx.ITEM_NORMAL )
        self.TipoMenuCadastro.Append( self.TipoMenuItemClientes )

        self.TipoMenuItemFornecedores = wx.MenuItem( self.TipoMenuCadastro, wx.ID_ANY, _(u"Fornecedores"), wx.EmptyString, wx.ITEM_NORMAL )
        self.TipoMenuCadastro.Append( self.TipoMenuItemFornecedores )

        self.TipoMenuItemProdutos = wx.MenuItem( self.TipoMenuCadastro, wx.ID_ANY, _(u"Produtos"), wx.EmptyString, wx.ITEM_NORMAL )
        self.TipoMenuCadastro.Append( self.TipoMenuItemProdutos )

        self.TipoSubmenuRelatorios = wx.Menu()
        self.TipoMenuItemRelatorioClientes = wx.MenuItem( self.TipoSubmenuRelatorios, wx.ID_ANY, _(u"Relatório de Clientes"), wx.EmptyString, wx.ITEM_NORMAL )
        self.TipoSubmenuRelatorios.Append( self.TipoMenuItemRelatorioClientes )

        self.TipoMenuItemRelatorioFornecedores = wx.MenuItem( self.TipoSubmenuRelatorios, wx.ID_ANY, _(u"Relatório de Fornecedores"), wx.EmptyString, wx.ITEM_NORMAL )
        self.TipoSubmenuRelatorios.Append( self.TipoMenuItemRelatorioFornecedores )

        self.TipoMenuItemRelatorioProdutos = wx.MenuItem( self.TipoSubmenuRelatorios, wx.ID_ANY, _(u"Relatório de Produtos"), wx.EmptyString, wx.ITEM_NORMAL )
        self.TipoSubmenuRelatorios.Append( self.TipoMenuItemRelatorioProdutos )

        self.TipoMenuCadastro.AppendSubMenu( self.TipoSubmenuRelatorios, _(u"Relatórios") )

        self.TipoMenuPrincipal.Append( self.TipoMenuCadastro, _(u"Cadastro") )

        self.SetMenuBar( self.TipoMenuPrincipal )

        self.TipoBarraStatus = self.CreateStatusBar( 1, wx.STB_SIZEGRIP, wx.ID_ANY )
        self.TipoBarraStatus.SetBackgroundColour( wx.SystemSettings.GetColour( wx.SYS_COLOUR_INFOBK ) )


        self.Centre( wx.BOTH )

        # Connect Events
        self.Bind( wx.EVT_MENU, self.EventoTerminarPrograma,                id = self.TipoMenuItemSair.GetId()                  )
        self.Bind( wx.EVT_MENU, self.EventoAbrePainelClientes,              id = self.TipoMenuItemClientes.GetId()              )
        self.Bind( wx.EVT_MENU, self.EventoAbrePainelFornecedores,          id = self.TipoMenuItemFornecedores.GetId()          )
        self.Bind( wx.EVT_MENU, self.EventoAbrePainelProdutos,              id = self.TipoMenuItemProdutos.GetId()              )
        self.Bind( wx.EVT_MENU, self.EventoAbrePainelRelatorioClientes,     id = self.TipoMenuItemRelatorioClientes.GetId()     )
        self.Bind( wx.EVT_MENU, self.EventoAbrePainelRelatorioFornecedores, id = self.TipoMenuItemRelatorioFornecedores.GetId() )
        self.Bind( wx.EVT_MENU, self.EventoAbrePainelRelatorioProdutos,     id = self.TipoMenuItemRelatorioProdutos.GetId()     )

    def __del__( self ):
        pass

    def MakeModal(self, modal=True):
        if modal and not hasattr(self, '_disabler'):
            self._disabler = wx.WindowDisabler(self)
        if not modal and hasattr(self, '_disabler'):
            del self._disabler

    # Virtual event handlers, override them in your derived class
    def EventoTerminarPrograma( self, event ):
        event.Skip()

    def EventoAbrePainelClientes( self, event ):
        janelaClientes = TipoCadastroClientes(None)
        janelaClientes.MakeModal()
        janelaClientes.Show()
        

    def EventoAbrePainelFornecedores( self, event ):
        janelaFornecedores = TipoCadastroFornecedores(None)
        #janelaClientes.MakeModal()
        janelaFornecedores.Show()
        

    def EventoAbrePainelProdutos( self, event ):
        event.Skip()

    def EventoAbrePainelRelatorioClientes( self, event ):
        event.Skip()

    def EventoAbrePainelRelatorioFornecedores( self, event ):
        event.Skip()

    def EventoAbrePainelRelatorioProdutos( self, event ):
        event.Skip()

