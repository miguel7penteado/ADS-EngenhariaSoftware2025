# -*- coding: utf-8 -*-


import wx

from ERPAgroTech import TipoJanelaPrincipal

class Programa(TipoJanelaPrincipal):
    def __init__(self, parent):
        TipoJanelaPrincipal.__init__(self, parent)




app = wx.App(False)    # cria uma nova aplicação e não redireciona stdout e stderr para janela principal
frame = Programa(None) # frame é uma janela de nível de topo
frame.MakeModal()
frame.Show()           # Mostra a janela
app.MainLoop()         # aplicação entra em loop até finalizar


