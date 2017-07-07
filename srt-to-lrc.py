#!/usr/bin/env python3
# coding: utf-8

import fileinput
import sys

def usage():
    print('please specify file lists')
    print('usage: python srt-to-lrc.py file1 file2')

if __name__ == '__main__':

    lineNum = 0
    t = ""
    sentence = ""
    for line in fileinput.input(openhook=fileinput.hook_encoded("utf-8")):
        if lineNum % 4 == 1 :
            t = line[3:11]
            t= t.replace(",",".")
        elif lineNum % 4 == 2 :
            sentence = line
        elif lineNum % 4 == 3 :
            print ("[%s]%s" % (t, sentence), end='')
        lineNum += 1
