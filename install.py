#!/usr/bin/python3

import shutil
import pathlib

verbose = True

homeRoot = pathlib.Path.home()
vimRoot = pathlib.Path(homeRoot, '.vim')

class InstallRule:
  def __init__(self, source, target):
    self.source = pathlib.Path(*source)
    self.target = pathlib.Path(*target)

  def install(self):
    source = self.source
    target = self.target
    
    if verbose:
      message = 'Installing ({}) to ({})'.format(source, target)
      print(message)

    self.delete()

    isDirectory = source.is_dir()
    if isDirectory:
      shutil.copytree(source, target)
    else:
      shutil.copyfile(source, target)

  def delete(self):
    target = self.target 

    exists = target.exists()
    if not exists:
      return

    isDirectory = target.is_dir()
    if isDirectory:
      shutil.rmtree(target)
    else:
      target.unlink()

def main():
  rules = [
    InstallRule(
      ['vimrc.vim'],
      [vimRoot, 'vimrc.vim']
      ),
    InstallRule(
      ['filetype'],
      [vimRoot, 'filetype']
      )
    ]

  for rule in rules:
    rule.install()

if __name__ == '__main__':
  main()
