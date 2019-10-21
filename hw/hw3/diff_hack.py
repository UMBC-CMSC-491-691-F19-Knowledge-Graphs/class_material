import sys

if len(sys.argv) < 2:
    print("Generates owl:differentFrom assertions for a set of entity URIs")
    print("  USAGE: python3 diff_hack.py <entity>+")
    print("  EXAMPLE: python3 diff_hack.py :adam :eve :cain :able")
    exit(0)

entities = sys.argv[1:]

print("# add these to your myfamily.ttl file")
for i in range(len(entities)):
    head = entities[i]
    rest = entities[0:i] + entities[i+1:]
    print("{} owl:differentFrom {}".format(head, ','.join(rest)))

    
