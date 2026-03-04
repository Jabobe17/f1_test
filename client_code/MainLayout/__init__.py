from ._anvil_designer import MainLayoutTemplate
from anvil import *

class MainLayout(MainLayoutTemplate):
  def __init__(self, **properties):
    self.init_components(**properties)

  @handle("btn_infos", "click")
  def btn_infos_click(self, **event_args):
    open_form("Pages.Table")        # <-- anpassen an deinen Pfad!

  @handle("btn_stats", "click")
  def btn_stats_click(self, **event_args):
    open_form("Pages.Dashboards")   # <-- anpassen an deinen Pfad!