{
  "targets": [
    {
      "target_name": "jsfoo",
      "sources": [ "jsfoo.cpp" ],
      "include_dirs": [
        "<!(node -e \"require('nan')\")"
      ]
    }
  ]
}