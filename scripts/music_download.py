#!/usr/bin/env python

# Youtube actually hosts audio-only opus tracks, but you can only get them
# in the webm container, which many music players, including quodlibet, don't
# know what to do with. This script downloads the track, then converts it with
# zero loss to the opus container using ffmpeg's `-acodec copy` feature.

from sys import *
from subprocess import call
from os.path import splitext
from os import remove, walk, listdir
from tempfile import TemporaryDirectory
from shutil import move

url = argv[1]

with TemporaryDirectory(prefix='yta-') as tempdir:
    call(['env', '-C', tempdir, 'youtube-dl', '-if', 'bestaudio', url])

    for tempdir, dirs, files in walk(tempdir):
        for fn in files:
            path = tempdir+'/'+fn
            name, ext = splitext(path)
            if ext == '.webm':
                if call([
                    'ffmpeg', '-hide_banner',
                    '-i', path,
                    '-acodec', 'copy',
                    name+'.opus'
                ]) == 0:
                    remove(path)

    for node in listdir(tempdir):
        move(tempdir+'/'+node, '.')

