{
  "targets": [
    {
      "target_name": "jsfoo",
      "sources": [ "jsfoo.cpp" ],
      'link_settings': {
        'libraries': [
          '/mnt/ddisk/dev/learn-asm/lasm/cPlusPlusFunction.o',
          '/mnt/ddisk/dev/learn-asm/lasm/cFunction.o'
        ],
      },
      "include_dirs": [
        "<!(node -e \"require('nan')\")"
      ]
    }
  ]
}