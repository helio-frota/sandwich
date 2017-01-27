{
  "targets": [
    {
      "target_name": "jsfoo",
      "sources": [ "jsfoo.cpp" ],
      'link_settings': {
        'libraries': [
          '../cPlusPlusFunction.o',
          '../cFunction.o',
          '../asmFunction.o'
        ],
      },
      "include_dirs": [
        "<!(node -e \"require('nan')\")"
      ]
    }
  ]
}
