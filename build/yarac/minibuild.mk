module_type = 'executable'
module_name = 'yarac'

include_dir_list = [
  '../../libyara/include',
]

src_search_dir_list = [
  '../..',
]

lib_list = [
  '../static',
  '${@project_root}/libmagic/build/static',
  '${@project_root}/libmagic/build/db',
  '${@project_root}/jansson/build/static',
  '${@project_root}/openssl/build/crypto_static',
  '${@project_root}/zlib',
]

build_list = [
  'args.c',
  'yarac.c',
]

if BUILDSYS_TOOLSET_NAME == 'msvs':
    definitions_windows += ['_CRT_SECURE_NO_WARNINGS']

prebuilt_lib_list_windows = ['crypt32','ws2_32', 'advapi32', 'user32']
prebuilt_lib_list_linux = ['pthread','dl']
