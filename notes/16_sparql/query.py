from SPARQLWrapper import SPARQLWrapper, JSON

default_endpoint = "http://dbpedia.org/sparql"

type_query = """SELECT DISTINCT ?class WHERE {{?x a ?class}} LIMIT {LIM} OFFSET {OFF}"""

def getall(query, endpoint=default_endpoint):
    """ returns a list of tuples with the query results """
    limit = 10000
    offset = 0
    total = 0
    found = limit

    tuples = []
    sparql = SPARQLWrapper(endpoint)
    sparql.setReturnFormat('json')

    while found == limit:  # keep going until we don't get limit results
        q = query.format(LIM=limit, OFF=offset)
        sparql.setQuery(q)
        results = sparql.query().convert()
        found = 0
        for result in results["results"]["bindings"]:
            found += 1
            #tuples.append(tuple([str(v['value']) for v in result.values()]))
        print('Found', found, 'results')
        total = total + found
        offset = offset + limit
    print('Results found:', total)
    #return tuples

def main():
    print('Find all classes in DBpedia')
    getall(type_query)

if __name__ == "__main__":
    # if called from command-line, call main() as an example
    main()
    
