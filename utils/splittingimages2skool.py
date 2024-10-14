#!/usr/bin/env python3
import sys
import os
import argparse
import datetime
from collections import OrderedDict

try:
    from skoolkit.snapshot import get_snapshot
    from skoolkit import tap2sna, sna2skool
except ImportError:
    SKOOLKIT_HOME = os.environ.get('SKOOLKIT_HOME')
    if not SKOOLKIT_HOME:
        sys.stderr.write('SKOOLKIT_HOME is not set; aborting\n')
        sys.exit(1)
    if not os.path.isdir(SKOOLKIT_HOME):
        sys.stderr.write('SKOOLKIT_HOME={}; directory not found\n'.format(SKOOLKIT_HOME))
        sys.exit(1)
    sys.path.insert(0, SKOOLKIT_HOME)
    from skoolkit.snapshot import get_snapshot
    from skoolkit import tap2sna, sna2skool

SPLITTING_HOME = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
BUILD_DIR = '{}/sources'.format(SPLITTING_HOME)
SPLITTING_Z80 = '{}/SplittingImages.z80'.format(SPLITTING_HOME)


class SplittingImages:
    def __init__(self, snapshot):
        self.snapshot = snapshot

    def get_address(self, address):
        return (self.snapshot[address + 0x01] * 0x100) + self.snapshot[address]

    def get_location_data(self):
        lines = []

        addr = 0xD28D
        for i in range(10):
            level_addr = self.get_address(addr+i*0x02)
            lines.append(f'b ${level_addr:04X} Data: Level {i+0x01:02}')
            lines.append(f'@ ${level_addr:04X} label=Data_Level_{i+0x01:02}')
            lines.append(f'  ${level_addr:04X},$01 Length of data.')
            level_length = self.snapshot[level_addr]
            level_addr+=0x01
            lines.append(f'  ${level_addr:04X},${level_length:02X} Data.')
            level_addr+=level_length
            lines.append(f'  ${level_addr:04X},$12 Timer states.')
            level_addr+=0x12
            lines.append(f'W ${level_addr:04X},$02 Graphics data pointer.')
            lines.append('')

        return '\n'.join(lines)


def run(subcommand):
    if not os.path.isdir(BUILD_DIR):
        os.mkdir(BUILD_DIR)
    if not os.path.isfile(SPLITTING_Z80):
        tap2sna.main(('-d', BUILD_DIR, '@{}/splittingimages.t2s'.format(SPLITTING_HOME)))
    splittingimages = SplittingImages(get_snapshot(SPLITTING_Z80))
    ctlfile = '{}/{}.ctl'.format(BUILD_DIR, subcommand)
    with open(ctlfile, 'wt') as f:
        f.write(getattr(splittingimages, methods[subcommand][0])())

###############################################################################
# Begin
###############################################################################
methods = OrderedDict((
    ('location_data', ('get_location_data', 'Location Data')),
    ('source_code', ('get_source_code_data', 'Source Code Remnants'))
))
subcommands = '\n'.join('  {} - {}'.format(k, v[1]) for k, v in methods.items())
parser = argparse.ArgumentParser(
    usage='%(prog)s SUBCOMMAND',
    description="Produce a skool file snippet for \"Splitting Images\". SUBCOMMAND must be one of:\n\n{}".format(
        subcommands),
    formatter_class=argparse.RawTextHelpFormatter,
    add_help=False
)
parser.add_argument('subcommand', help=argparse.SUPPRESS, nargs='?')
namespace, unknown_args = parser.parse_known_args()
if unknown_args or namespace.subcommand not in methods:
    parser.exit(2, parser.format_help())
run(namespace.subcommand)
