"""
    $python3 004.py -p 1 "Programación Orientada a Objetos"
"""

import sys
import re

"""
    Esta clase Gestiona los parámetros de usuario. Contabiliza y
    categoriza los parámetros recibidos.
    @author @POO
    @version 0.1.0
"""
class ParameterManager:
    def __init__(self):
        pass

    def analyze(self, params):

        results = []
        count = len (params)

        for param in params:
            length = len(param)

            #es númerico
            if (re.match(r"-?\d+(\.\d+)?", param)):
                parameterType = "numeric"

            #es alfanúmerico
            else:
                parameterType = "alphanumeric"

            results.append([length, parameterType])

        return [count, results]



parameters = sys.argv[1:]
print(parameters)