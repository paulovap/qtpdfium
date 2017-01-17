#!/usr/bin/env python
import json
import sys
import re
import os

def parse_sources(f) :
    sources = []
    while True:
        line = f.readline()
        if re.match(r"[ \t]*\][ \t]*", line):
            break
        result = re.search(r"\"(.*)\"", line)
        if result:
            sources.append(result.group(1))
    headers = filter(lambda x: x.endswith(".h"), sources)
    sources = filter(lambda x: x.endswith(".cpp") or x.endswith(".c"), sources)
    return (headers, sources)

def parse_module(name, f):
    bracket_cnt = 1
    while bracket_cnt > 0:
        line = f.readline()
        if re.match(r"[ \t]*\}[ \t]*", line):
            bracket_cnt -= 1
        if re.match(r"[ \t]*\{[ \t]*", line):
            bracket_cnt += 1
        if "sources" in line:
            headers, cpps = parse_sources(f)
            return (name, headers, cpps)

def to_pri(name, headers, sources):
    lines = [
    "# module " + name,
    "SOURCE_DIR = $$PWD/pdfium",
    "\nPRIVATE_HEADERS += \\" ]
    for header in headers[:-1]:
        lines.append("$$SOURCE_DIR/" + header + " \\")
    if len(headers):
        lines.append("$$SOURCE_DIR/" + headers[-1])
    lines.append("\nSOURCES += \\")
    for source in sources[:-1]:
        lines.append("$$SOURCE_DIR/" + source + " \\")
    if len(sources):
        lines.append("$$SOURCE_DIR/" + sources[-1])
    lines.append("\n")
    return lines

def save_pri(folder, name, lines):
    save = open(folder + os.sep + name + ".pri", "w")
    for line in lines:
        save.write(line + os.linesep)
    save.close()

f = open(sys.argv[1])

while True:
    line = f.readline()
    if not line:
        break
    if "static_lib" in line:
        module_name = re.search(r"\"(.*)\"", line).group(1)
        print sys.argv[2]
        tu = parse_module(module_name, f)
        if tu:
            save_pri(sys.argv[2].strip(), module_name, to_pri(*tu))
