# Process this file with autoconf to produce a configure script.

AC_PREREQ([2.69])
AC_INIT(ThinkHDD, 01, nroach44@gmail.com)
AC_CONFIG_SRCDIR([src])
AC_CONFIG_HEADERS([config.h])

AM_INIT_AUTOMAKE

# Checks for programs.
AC_PROG_CXX

# Checks for libraries.

# Checks for header files.
AC_CHECK_HEADERS([unistd.h])
AC_CHECK_HEADERS([signal.h])

# Checks for typedefs, structures, and compiler characteristics.

# Checks for library functions.

AC_ARG_WITH([systemd-service-dir],
  AS_HELP_STRING([--wth-systemd-service-dir=/etc/systemd/system/],
    [Path to install the systemd service file]),
  systemd_service_dir=${with_systemd_service_dir},
  systemd_service_dir=${sysconfdir}/systemd/system/
  )

#AC_DEFINE_DIR(SYSTEMD_SERVICE_DIR, systemd_service_dir, [Location to place systemd service files])

AC_SUBST([systemd_service_dir], [${systemd_service_dir}])

AC_CONFIG_FILES([
  Makefile
  src/Makefile
])
AC_OUTPUT
