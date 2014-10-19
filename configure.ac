# Process this file with autoconf to produce a configure script.

AC_PREREQ([2.69])
AC_INIT(ThinkHDD, 03, nroach44@gmail.com)
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

AC_ARG_ENABLE([systemd],
  AS_HELP_STRING([--enable-systemd=yes],
    [Enable systemd unit file installation]),
    [case "${enable_systemd}" in
      yes) systemd=true ;;
      no)  systemd=false
        AC_MSG_WARN([Not installing systemd unit file]);;
      *) AC_MSG_ERROR([bad value ${enable_systemd} for --enable-systemd]) ;;
  esac],[systemd=false])

AC_ARG_WITH([systemd-service-dir],
  AS_HELP_STRING([--wth-systemd-service-dir=/etc/systemd/system/],
    [Path to install the systemd service file]),
  systemd_service_dir=${with_systemd_service_dir},
  systemd_service_dir=${sysconfdir}/systemd/system/
  )

#AC_DEFINE_DIR(SYSTEMD_SERVICE_DIR, systemd_service_dir, [Location to place systemd service files])

AM_CONDITIONAL([SYSTEMD], [test x$systemd = xtrue])
AC_SUBST([systemd_service_dir], [${systemd_service_dir}])

AC_CONFIG_FILES([
  Makefile
  dist/Makefile
  src/Makefile
])
AC_OUTPUT
