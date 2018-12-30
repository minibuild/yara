module_type = 'lib-static'
module_name = 'yara_static'

include_dir_list = [
  '../../libyara/include',
  '../../libyara',
  '${@project_root}/openssl/include',
  '${@project_root}/libmagic/include',
  '${@project_root}/jansson/include',
]

src_search_dir_list = [
  '../../libyara',
  '../../libyara/proc',
  '../../libyara/modules',
]

# yara modules
build_list += [
  'time.c',
  'tests.c',
  'pe.c',
  'pe_utils.c',
  'elf.c',
  'math.c',
  'mod_hash.c',
  'dotnet.c',
  'magic.c',
  'macho.c',
  'cuckoo.c',
  'dex.c',
]

build_list += [
  'grammar.c',
  'ahocorasick.c',
  'arena.c',
  'atoms.c',
  'bitmask.c',
  'compiler.c',
  'endian.c',
  'exec.c',
  'exefiles.c',
  'filemap.c',
  'hash.c',
  'hex_grammar.c',
  'hex_lexer.c',
  'lexer.c',
  'libyara.c',
  'mem.c',
  'modules.c',
  'object.c',
  'parser.c',
  'proc.c',
  're.c',
  're_grammar.c',
  're_lexer.c',
  'rules.c',
  'scan.c',
  'scanner.c',
  'sizedstr.c',
  'stopwatch.c',
  'strutils.c',
  'stream.c',
  'threading.c',
]

definitions = ['HAVE_LIBCRYPTO', 'DOTNET_MODULE', 'CUCKOO_MODULE', 'MAGIC_MODULE', 'HASH_MODULE', 'MACHO_MODULE', 'DEX_MODULE']

definitions_windows = ['USE_WINDOWS_PROC']
definitions_linux = ['USE_LINUX_PROC']
definitions_macosx = ['USE_MACH_PROC']

if BUILDSYS_TOOLSET_NAME == 'msvs':
    definitions_windows += ['_CRT_SECURE_NO_WARNINGS']
    disabled_warnings = ['4005', '4273', '4090']

build_list_windows = ['windows.c']
build_list_linux = ['linux.c']
build_list_macosx = ['mach.c']
