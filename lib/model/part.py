import json
from functools import cache
from pathlib import Path

class Part(object):
    @staticmethod
    @cache
    def all():
        return sorted((Part.get_dict(id) for id in Part.names()),
                      key=lambda x: x['id'])

    def names():
        parts_files = Path('parts').glob('**/*.json')
        return list(map(lambda path: path.name.replace('.json', ''), parts_files))

    @staticmethod
    def get(name, default=None):
        try:
            return Part(name)
        except:
            return default

    @staticmethod
    def get_dict(name, extra={}):
        return Part(name).to_dict(extra)


    def __init__(self, part_name):
        self.part_name = part_name.replace('/', '-').lower()
        self.file = Path('parts').joinpath(self.part_name + '.json')

        try:
            self.data = json.loads(self.file.read_text())
        except json.decoder.JSONDecodeError:
            print('[ERROR] Invalid JSON file: {}.'.format(self.file))
            raise

    def to_dict(self, extra={}):
        # Dict union syntax could be simpler, assuming Py3.9 or later
        return {**self.data,
                **{
                    'id': self.part_name,
                    'datasheet_redirect_target': self.data['datasheet'],
                    'datasheet': '/ds/' + self.part_name,
                    'url_path': '/parts/' + self.part_name,
                    'json_path': '/json/' + self.part_name,
                },
                **extra,
        }
