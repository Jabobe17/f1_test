from ._anvil_designer import MainLayoutTemplate
from anvil import *
import anvil.tables as tables
import anvil.tables.query as q
from anvil.tables import app_tables
import anvil.server

from .PageTables import PageTables
from .PageDashboards import PageDashboards

class MainLayout(MainLayoutTemplate):
  def __init__(self, **properties):
    self.init_components(**properties)
    self.show_page(PageTables())
    def show_page(self, page):
      self.content_panel.clear()
    self.content_panel.add_component(page)



  @handle("btn_infos", "click")
  def btn_infos_click(self, **event_args):
      self.show_page(PageTables())
   
  @handle("btn_stats", "click")
  def btn_stats_click(self, **event_args):
    self.show_page(PageDashboards())
