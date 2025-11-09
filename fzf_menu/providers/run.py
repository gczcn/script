import os
import subprocess

fzf_opts = [
    '--prompt=" run "',
    '--multi',
]

def find_exes(dir: str) -> list:
    if os.path.exists(dir):
        exes = []
        for filename in os.listdir(dir):
            filepath = os.path.join(dir, filename)
            if os.path.isfile(filepath) and os.access(filepath, os.X_OK):
                exes.append(filename)
        return exes
    return []

def get(config={}, args=''):
    if args == '':
        opts = []
        if 'fzf_default_opts' in config:
            opts.extend(config['fzf_default_opts'])
        if 'fzf_default_color_opts' in config:
            opts.extend(config['fzf_default_color_opts'])
        opts.extend(fzf_opts)

        fzf_list = [[], opts]

        path = str(os.environ.get('PATH')).split(':')
        for dir in path:
            fzf_list[0].extend(find_exes(dir))
        fzf_list[0] = sorted(set(fzf_list[0]))
        return fzf_list
    else:
        processes = []
        for exe in args:
            process = subprocess.Popen(
                exe,
                stdout=subprocess.DEVNULL,
                stderr=subprocess.DEVNULL,
                stdin=subprocess.DEVNULL,
                shell=True
            )
            processes.append(process)
        return []
