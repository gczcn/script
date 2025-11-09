import importlib
import sys
import os
import tomllib
import pyfzf

# Providers
# import providers
# provider_names = [i for i in dir(providers) if '__' not in i]

# Load the config.toml file
current_cwd = os.getcwd()
os.chdir(os.path.dirname(__file__))
config = []
try:
    with open('config.toml', 'br') as config_file:
        config = tomllib.load(config_file)
except: pass
os.chdir(current_cwd)

provider = importlib.import_module(f'providers.{sys.argv[1]}')
selections = ''
fzf = pyfzf.pyfzf.FzfPrompt()
while True:
    l = provider.get(config, selections)
    if l == [] or l[0] == []:
        break
    selections = fzf.prompt(l[0], ' '.join(l[1]))
