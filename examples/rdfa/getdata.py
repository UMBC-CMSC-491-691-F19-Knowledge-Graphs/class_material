import rdflib, sys

nargs = len(sys.argv)

if not (1 < nargs < 4):
    print 'usage: python getdata.py url [format] where format is rdfa, rdfa1.1, microdata, ...'
    print '  eg: python getdata.py "http://www.w3.org/ns/entailment/data/RDFS.html"'
    sys.exit(0)

url = sys.argv[1]
format = sys.argv[2] if nargs == 3 else 'rdfa1.1'

g = rdflib.Graph()
g.parse(url, format=format)
print g.serialize(format='n3')

