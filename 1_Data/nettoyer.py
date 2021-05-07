import os
replacement = """Default"""
for dname, dirs, files in os.walk("./*/alto_eScriptorium/*.xml"):
    for fname in files:
        fpath = os.path.join(dname, fname)
        with open(fpath) as f:
            s = f.read()
        s = s.replace("Default", replacement)
        with open(fpath, "w") as f:
            f.write(s)
