librepos_sources = [
  'main.vala',
  'window.vala',
]

librepos_deps = [
  dependency('gio-2.0', version: '>= 2.50'),
  dependency('gtk+-3.0', version: '>= 3.22'),
]

gnome = import('gnome')

librepos_sources += gnome.compile_resources('librepos-resources',
  'librepos.gresource.xml',
  c_name: 'librepos'
)

executable('librepos', librepos_sources,
  vala_args: '--target-glib=2.50',  dependencies: librepos_deps,
  install: true,
)
