import panel as pn
import pandas as pd

pn.extension('tabulator')

filename = "./data.csv"
pddata = pd.read_csv(filename)

# plot
fig = pn.widgets.Tabulator(pddata)

app = pn.Row(pn.Column("Hello World", fig))
app.servable()