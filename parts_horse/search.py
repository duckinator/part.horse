from .base import *
from pathlib import Path

class Search(PartsHorseBase):
    def __init__(self):
        super().__init__()

        parts_files = Path('content/parts').glob('**/*.json')
        self.parts_list = list(map(self.path_to_name, parts_files))

    def path_to_name(self, path):
        return path.name.replace('.json', '')

    def chunk_relevance(self, data, chunk):
        chunk = chunk.lower()
        rs = [
                chunk in data['datasheet_redirect_target'].lower(),
                chunk in data['style'].lower(),
                chunk in data['summary'].lower(),
                chunk in map(lambda x: x.lower(), data['tags']),
                chunk in data['name'].lower(),
            ]

        return sum(rs)

    def relevance(self, part, query):
        data = self.part_dict(part)
        # Remove empty strings, None, etc.
        chunks = filter(lambda x: x, query.split(' '))
        # Determine the relevance of each chunk.
        rs = map(lambda c: self.chunk_relevance(data, c), chunks)
        return sum(rs)

    def search(self, query, min_relevance=1):
        # Split by word, and remove empty strings, None, etc.
        chunks = filter(lambda x: x, query.split(' '))
        relevances = map(lambda p: [p, self.relevance(p, query)], self.parts_list)
        results = filter(lambda x: x[1] >= min_relevance, relevances)
        results = map(lambda r: self.part_dict(r[0], {'relevance': r}), results)
        return sorted(results, key=lambda x: x['relevance'])

    @cherrypy.expose
    def index(self, q=''):
        if q:
            results = self.search(q, min_relevance=1)
        else:
            results = []

        page = {
            'query': q,
            'results': results,
        }

        return self.render(page)
