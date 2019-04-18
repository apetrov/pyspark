from operator import add

def run(sc, args):
    s = 'Hi hi hi bye bye bye word count'
    seq = s.split()
    sc.parallelize(seq).map(lambda word: (word, 1)).reduceByKey(add).collect()
