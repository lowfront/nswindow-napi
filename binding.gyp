{
  "targets": [
    {
      "target_name": "AppKitNAPI",
      "sources": ["AppKitNAPI.cc"],
      "link_settings": {
        "conditions": [
          [
            'OS=="mac"',
            {
              "sources": ["NSWindow.mm"],
            }
          ]
        ]
      }
    }
  ],
}
