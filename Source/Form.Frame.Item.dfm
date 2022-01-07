object FrameItem: TFrameItem
  Left = 0
  Top = 0
  Width = 430
  Height = 189
  TabOrder = 0
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 430
    Height = 189
    Align = alClient
    BevelOuter = bvNone
    Color = 2828067
    ParentBackground = False
    TabOrder = 0
    OnClick = Panel1Click
    OnMouseEnter = Panel1MouseEnter
    OnMouseLeave = Panel1MouseLeave
    object lblDescricao: TLabel
      Left = 47
      Top = 59
      Width = 142
      Height = 19
      Caption = 'Descri'#231#227'o do Item 1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Shape1: TShape
      Left = 24
      Top = 59
      Width = 17
      Height = 19
      Brush.Color = 14112832
      Pen.Style = psClear
    end
    object lblComentario: TLabel
      Left = 47
      Top = 84
      Width = 79
      Height = 16
      Caption = 'lblComentario'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
end
