FILE(REMOVE_RECURSE
  "CMakeFiles/neocortec_generate_messages_py"
  "/home/odroid/car-whisper/devel/lib/python2.7/dist-packages/neocortec/msg/_neocortecData.py"
  "/home/odroid/car-whisper/devel/lib/python2.7/dist-packages/neocortec/srv/_neocortecSendData.py"
  "/home/odroid/car-whisper/devel/lib/python2.7/dist-packages/neocortec/msg/__init__.py"
  "/home/odroid/car-whisper/devel/lib/python2.7/dist-packages/neocortec/srv/__init__.py"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/neocortec_generate_messages_py.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
