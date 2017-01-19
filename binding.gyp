{
  "targets": [
    {
      "target_name": "jsfoo",
      "sources": [ "jsfoo.cpp" ],
      'link_settings': {
        'libraries': [
          '/mnt/ddisk/dev/sandwich/cPlusPlusFunction.o',
          '/mnt/ddisk/dev/sandwich/cFunction.o'
        ],
      },
      "include_dirs": [
        "<!(node -e \"require('nan')\")"
      ]
    }
  ]
}