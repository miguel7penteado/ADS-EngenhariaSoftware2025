# -*- coding: utf-8 -*-

###########################################################################
## Python code generated with wxFormBuilder (version 4.2.1-0-g80c4cb6)
## http://www.wxformbuilder.org/
##
## PLEASE DO *NOT* EDIT THIS FILE!
###########################################################################

import wx
import wx.xrc
import wx.grid

import datetime

from sqlalchemy import create_engine, Column, Integer, String, Date, MetaData
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker
import os


import gettext
_ = gettext.gettext


###########################################################################
## Variáveis
###########################################################################


DATABASE_URL = "postgresql://administrador-banco:senha-banco@localhost:5432/banco-de-dados-principal"

# Criando as variáveis requeridas pelo SQLAlchemy engine and base
engine = create_engine(DATABASE_URL)
Base   = declarative_base()

###########################################################################
## Variáveis
###########################################################################

# Define Client model
class Client(Base):
    __tablename__ = 'clientes'
    
    id         = Column(Integer,      primary_key=True)
    nome       = Column(String(200),  nullable=False)
    endereco   = Column(String(2000), nullable=False)
    nascimento = Column(Date,         nullable=True)
    imagem     = Column(Binary,       nullable=True)
    
    def __repr__(self):
        return f"<clientes(id={self.id}, nome='{self.nome}', endereco='{self.endereco}', nascimento='{self.nascimento}, imagem='{self.imagem}')>"

# Criar todas as tabelas no SGBD (Banco de Dados Postgres)
Base.metadata.create_all(engine)

# Criar uma sessão de acesso ao banco
Session = sessionmaker(bind=engine)

# Formatar data de nascimento
def validate_date(date_str):
    try:
        return datetime.datetime.strptime(date_str, "%Y-%m-%d").date()
    except ValueError:
        return None

###########################################################################
## Class TipoCadastroClientes
###########################################################################

class TipoCadastroClientes ( wx.Frame ):

    def __init__( self, parent ):
        wx.Frame.__init__ ( self, parent, id = wx.ID_ANY, title = _(u"ERP Agrotech - Cadastro de Clientes1 - Lista"), pos = wx.DefaultPosition, size = wx.Size( 604,358 ), style = wx.DEFAULT_FRAME_STYLE|wx.TAB_TRAVERSAL )
        
        
        # Iniciar sessão com o SGBD (Banco de Dados)
        self.session = Session()
        
        
        self.SetSizeHints( wx.DefaultSize, wx.DefaultSize )

        TipoEnquadramentoJanela = wx.BoxSizer( wx.VERTICAL )

        TipoEnquadramentoSuperior = wx.BoxSizer( wx.HORIZONTAL )

        self.TipoTítuloCadastroClientes = wx.StaticText( self, wx.ID_ANY, _(u"Cadastro de Clientes "), wx.DefaultPosition, wx.DefaultSize, 0 )
        self.TipoTítuloCadastroClientes.Wrap( -1 )

        TipoEnquadramentoSuperior.Add( self.TipoTítuloCadastroClientes, 0, wx.ALIGN_CENTER_HORIZONTAL|wx.ALIGN_CENTER_VERTICAL|wx.ALL, 5 )


        TipoEnquadramentoJanela.Add( TipoEnquadramentoSuperior, 1, wx.ALIGN_CENTER_HORIZONTAL|wx.ALIGN_CENTER_VERTICAL, 5 )

        TipoEnquadramentoCentral = wx.BoxSizer( wx.HORIZONTAL )

        self.TipoGradeCentral = wx.grid.Grid( self, wx.ID_ANY, wx.DefaultPosition, wx.DefaultSize, 0 )

        # Grid
        self.TipoGradeCentral.CreateGrid( 5, 5 )
        self.TipoGradeCentral.EnableEditing( True )
        self.TipoGradeCentral.EnableGridLines( True )
        self.TipoGradeCentral.EnableDragGridSize( False )
        self.TipoGradeCentral.SetMargins( 0, 0 )

        # Columns
        self.TipoGradeCentral.SetColLabelValue(0, "ID")
        self.TipoGradeCentral.SetColLabelValue(1, "Nome")
        self.TipoGradeCentral.SetColLabelValue(2, "Endereço")
        self.TipoGradeCentral.SetColLabelValue(3, "Nascimento")
        self.TipoGradeCentral.SetColLabelValue(3, "Imagem")
        self.TipoGradeCentral.SetColSize(0, 50)
        self.TipoGradeCentral.SetColSize(1, 250)
        self.TipoGradeCentral.SetColSize(2, 150)
        self.TipoGradeCentral.SetColSize(3, 150)
        self.TipoGradeCentral.SetColSize(4, 150)
        self.TipoGradeCentral.Bind(wx.grid.EVT_GRID_SELECT_CELL, self.on_cell_select)
        
        
        self.TipoGradeCentral.EnableDragColMove( False )
        self.TipoGradeCentral.EnableDragColSize( True )
        self.TipoGradeCentral.SetColLabelAlignment( wx.ALIGN_CENTER, wx.ALIGN_CENTER )

        # Rows
        self.TipoGradeCentral.EnableDragRowSize( True )
        self.TipoGradeCentral.SetRowLabelAlignment( wx.ALIGN_CENTER, wx.ALIGN_CENTER )

        # Label Appearance

        # Cell Defaults
        self.TipoGradeCentral.SetDefaultCellAlignment( wx.ALIGN_LEFT, wx.ALIGN_TOP )
        TipoEnquadramentoCentral.Add( self.TipoGradeCentral, 0, wx.ALIGN_CENTER_HORIZONTAL|wx.ALIGN_CENTER_VERTICAL|wx.ALL, 5 )


        TipoEnquadramentoJanela.Add( TipoEnquadramentoCentral, 1, wx.ALIGN_CENTER, 5 )

        TipoEnquadramentoInferior = wx.BoxSizer( wx.HORIZONTAL )

        self.TipoBoatoInserir = wx.Button( self, wx.ID_ANY, _(u"Inserir"), wx.DefaultPosition, wx.DefaultSize, 0 )
        TipoEnquadramentoInferior.Add( self.TipoBoatoInserir, 0, wx.ALL, 5 )

        self.TipoBoatoAlterar = wx.Button( self, wx.ID_ANY, _(u"Alterar"), wx.DefaultPosition, wx.DefaultSize, 0 )
        TipoEnquadramentoInferior.Add( self.TipoBoatoAlterar, 0, wx.ALL, 5 )

        self.TipoBoatoRemover = wx.Button( self, wx.ID_ANY, _(u"Remover"), wx.DefaultPosition, wx.DefaultSize, 0 )
        TipoEnquadramentoInferior.Add( self.TipoBoatoRemover, 0, wx.ALL, 5 )

        self.TipoBoatoPesquisar = wx.Button( self, wx.ID_ANY, _(u"Pesquisar"), wx.DefaultPosition, wx.DefaultSize, 0 )
        TipoEnquadramentoInferior.Add( self.TipoBoatoPesquisar, 0, wx.ALL, 5 )

        self.TipoBoatoFechar = wx.Button( self, wx.ID_ANY, _(u"Fechar"), wx.DefaultPosition, wx.DefaultSize, 0 )
        TipoEnquadramentoInferior.Add( self.TipoBoatoFechar, 0, wx.ALL, 5 )


        TipoEnquadramentoJanela.Add( TipoEnquadramentoInferior, 1, wx.ALIGN_CENTER, 20 )


        self.SetSizer( TipoEnquadramentoJanela )
        self.Layout()

        self.Centre( wx.BOTH )

        # Connect Events
        self.TipoBoatoInserir.Bind( wx.EVT_BUTTON, self.EventoBotaoInserir )
        self.TipoBoatoAlterar.Bind( wx.EVT_BUTTON, self.EventoBotaoAlterar )
        self.TipoBoatoRemover.Bind( wx.EVT_BUTTON, self.EventoBotaoRemover )
        self.TipoBoatoPesquisar.Bind( wx.EVT_BUTTON, self.EventoBotaoPesquisar )
        self.TipoBoatoFechar.Bind( wx.EVT_BUTTON, self.EventoBotaoFechar )

    def __del__( self ):
        pass





    # Virtual event handlers, override them in your derived class
    def EventoBotaoInserir( self, event ):
        event.Skip()

    def EventoBotaoAlterar( self, event ):
        event.Skip()

    def EventoBotaoRemover( self, event ):
        event.Skip()

    def EventoBotaoPesquisar( self, event ):
        event.Skip()

    def EventoBotaoFechar( self, event ):
        event.Skip()


