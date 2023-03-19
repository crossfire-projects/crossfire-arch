#!/bin/python

#
# Crossfire -- cooperative multi-player graphical RPG and adventure game
#
# Copyright (c) 2021 the Crossfire Development Team
#
# Crossfire is free software and comes with ABSOLUTELY NO WARRANTY. You are
# welcome to redistribute it under certain conditions. For details, please
# see COPYING and LICENSE.
#
# The authors can be reached via e-mail at <crossfire@metalforge.org>.
#

import argparse
import shutil

def frame_code(frame):
    if frame < 10:
        return frame
    return chr(ord('A') + frame - 10)


parser = argparse.ArgumentParser(description="Copy a sequence of files to Crossfire faces, adequately named. Also "
                                             "generate the .face file.\nFiles are supposed to be ordered by direction "
                                             "then animation frame, that is the second file is direction 2, "
                                             "the 9th the second frame of direction 1's animation.\nNo check on whether "
                                             "the files are actually valid PNG files or not is done.")
parser.add_argument('files', nargs='+')
parser.add_argument('--faceset', default="base", type=str, help='faceset to generate the face for, default "base"')
parser.add_argument('--face', required=True, type=str, help='name of the face to generate')
parser.add_argument('--facings', default=8, type=int, help='number of facings for the face, 1, 2, 4 or 8, default 8')
parser.add_argument('--magicmap', type=str, help='color to assign the face on the magicmap, default none so no magic '
                                                 'map information')
parser.add_argument('--license', type=str, help='License file to use for these faces')

args = parser.parse_args()

frames_per_direction = len(args.files) / args.facings
if frames_per_direction != int(frames_per_direction):
    print("Error: number of files {0} must be divisible by facings {1}".format(len(args.files), args.facings))
    exit(1)

if args.facings == 1:
    facings = [1]
elif args.facings == 2:
    facings = [1, 5]
elif args.facings == 4:
    facings = [1, 3, 5, 7]
else:
    facings = [1, 2, 3, 4, 5, 6, 7, 8]

print("Making face for '{0}', with {1} facings and {2} frames per facing.".format(args.face, args.facings,
                                                                                  int(frames_per_direction)))

facing = 1
frame = 1
anim_file = "animation {0}\nfacings {1}\n".format(args.face, args.facings)
anims = []
magicmap = []
for f in range(0, len(facings) + 1):
    anims.append([])
    magicmap.append([])
for file in args.files:
    shutil.copyfile(file, "{0}.{1}.1{2}{3}.png".format(args.face, args.faceset, facing, frame_code(frame)))
    anims[facing].append("{0}.1{1}{2}\n".format(args.face, facing, frame_code(frame)))
    if args.magicmap:
        magicmap[facing] += "face {0}.1{1}{2}\nmagicmap {3}\nend\n".format(args.face, facing, frame_code(frame), args.magicmap)

    facing += 1
    if facing == len(facings) + 1:
        facing = 1
        frame += 1

for a in anims:
    anim_file += "".join(a)
anim_file += "mina\n"
for m in magicmap:
    anim_file += "".join(m)

out = open("{0}.face".format(args.face), 'w')
out.write(anim_file)
out.close()

if args.license:
    shutil.copyfile(args.license, "{0}.{1}.LICENSE".format(args.face, args.faceset))
