"""
    Un ejemplo básico es el  de busqueda de archivos en la computadora


    https://regexr.com

    Caracteres especiales
    ---------------------
    Son aquellos que tienen un significado no literal dentro de la expresión regular.
            . * {} [] () / - + | ?

    Metacaracteres
    --------------
    Son una combinación de caracteres especiales que tienenun significado superior dentro de la expresión regular.

    \w: un caracter alfanumérico o quion bajo
    \W: Un caracter que no es \w
    \d: Un caracter número
    \D: Un caracter que no es \d
    []: Significa un único caracter que puede ser cualquiera d elos caracteres que se encuentran dentro de los corchetes
    (): Agrupar
    {}: Repetición. El caracter o la agrupación anterior se repite el numero de veces indicado
        {n}: se repite especificamente n veces
        {n,m}: se repite al menos n veces y máximo m veces
        {n, }: se repite al menos n veces, máximo infinitas veces
        { ,m}: se repite un máximo m veces
    .: Significa cualquier carater
    *: El caracter o  la agrupación anterior se repite cero o infinitas veces
    +: El carácter o la agrupación anterior se repite una o más veces
    ?: El caracter o la agrupación anterior es opcional

    Ejemplo
    -------

    9213-2121
        Número de Honduras
        Originalmente era del operador Tigo
        Telefonía móvil

        (\(\504)\)?\d\d\d\d-?\d\d\d\d

        (\(\504)\)?9\d{3}-?\d{4}


"""
import re

class Validator:
    def __init__(self):
        pass

    def phoneNumber(self, phoneNumber = ""):

        if re.match(r"(\(\504)\)?9\d{3}-?\d{4}", phoneNumber) :
            return True

        return False

    def phoneNumbers(self, phoneNumbers):
        result = []

        for number in phoneNumbers:
            resultElement = [number, self.phoneNumber(number)]
            result.append(resultElement)

        return result


userPhoneNumbers = [
    "(+504)9111-1111",
    "(+503)91111111",
    "91111111",
    "9111-1-111",
    "91111-111"
]

userPhoneNumber = "9213-8888"

validator = Validator()

print(
    "El número de telefono %s es: %s" %(
        userPhoneNumber,
        validator.phoneNumber(userPhoneNumber)
        )
    )