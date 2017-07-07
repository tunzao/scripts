#!/usr/bin/env python3
# coding: utf-8

import fileinput
import sys

def usage():
    print('please specify file lists')
    print('usage: python srt-to-lrc.py file1 file2')

if __name__ == '__main__':

    linenum = 0
    t = ""
    sentence = ""
    out = ''
    total = 0

    for line in fileinput.input(openhook=fileinput.hook_encoded("utf-8")):
        if fileinput.isfirstline():
            filename = fileinput.filename()
            print('converting file %s' % filename)
            out = open(filename[0:len(filename)-3] + "lrc", 'w')
            total += 1

        if linenum % 4 == 1 :
            t = line[3:11]
            t= t.replace(",",".")
        elif linenum % 4 == 2 :
            sentence = line
        elif linenum % 4 == 3 :
            out.write("[%s]%s" % (t, sentence))
        linenum += 1
    print('converted %d file(s)' % total)
