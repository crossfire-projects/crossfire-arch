#!/bin/python

#
# Crossfire -- cooperative multi-player graphical RPG and adventure game
#
# Copyright (c) 2022 the Crossfire Development Team
#
# Crossfire is free software and comes with ABSOLUTELY NO WARRANTY. You are
# welcome to redistribute it under certain conditions. For details, please
# see COPYING and LICENSE.
#
# The authors can be reached via e-mail at <crossfire@metalforge.org>.
#

import argparse
import shutil
import subprocess

parser = argparse.ArgumentParser(description="Split a sequence of pictures to Crossfire faces and animations, adequately named for an aura. "
                                             "Generate the .face file with the corresponding animations.")
parser.add_argument('files', nargs='+')
parser.add_argument('--faceset', default="base", type=str, help='faceset to generate the face for, default "base"')
parser.add_argument('--name', required=True, type=str, help='name of the faces and animations to generate')
parser.add_argument('--size', required=True, type=int, help='number of faces to make for each size')
parser.add_argument('--magicmap', type=str, help='color to assign the face on the magicmap, default none so no magic '
                                                 'map information')
parser.add_argument('--license', type=str, help='License file to use for these faces')

args = parser.parse_args()

print("Making split animation and faces for '{0}'.".format(args.name))

frames = len(args.files)
magicmap = ''

with open('{0}.face'.format(args.name), 'w') as anim_file:
    for x in range(0, args.size):
        for y in range(0, args.size):
            anim_file.write('animation {0}_{1}_{2}\n'.format(args.name, x, y))
            for f in range(0, frames):
                face_name = '{0}.{1}{2}{3}\n'.format(args.name, x, y, f)
                anim_file.write(face_name)
                subprocess.call(['convert', '-extract', '32x32+{0}+{1}'.format(x * 32, y * 32), args.files[f], '{0}.{1}.{2}{3}{4}.png'.format(args.name, args.faceset, x, y, f)])
                if args.magicmap:
                    magicmap += 'face {0}magicmap {1}\nend\n'.format(face_name, args.magicmap)
            anim_file.write('mina\n')
    anim_file.write(magicmap)

if args.license:
    shutil.copyfile(args.license, "{0}.{1}.LICENSE".format(args.name, args.faceset))
