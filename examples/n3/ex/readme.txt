The files ex?.ttl are simple RDF examples in Turtle syntax that you
can run through cwm to see what addional facts can be inferred.

Here are the cwm commands to run:

  cwm --n3=/d ex0.ttl --think=rdfs-rules.n3 > ex0.out.ttl
  cwm --n3=/d ex1.ttl --think=rdfs-rules.n3 > ex1.out.ttl
  cwm --n3=/d ex2.ttl --think=rdfs-rules.n3 > ex2.out.ttl
  cwm --n3=/d ex3.ttl --think=rdfs-rules.n3 > ex3.out.ttl
  cwm --n3=/d ex4.ttl --think=rdfsPlus-rules.n3 > ex4.out.ttl

The output files (ex?.out.ttl) contain the original triples plus the
new triples that are inferred by the rules.  

rdfs-rules.n3 defines the rdfs vocabulary and cinludes N3 rules that
implement the semantics of rdfs.

rdfsPlus-rules.n3 defines the rdfs vocabulary and cinludes N3 rules
that implement the semantics of rdfs plus a few owl terms (e.g.,
owl:inverseOf)
