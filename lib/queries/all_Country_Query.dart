const getCountries = r'''
query {
  countries {
    code,
    name,
    emoji,
    languages {
      code,
      name
    }
  }
  }
''';