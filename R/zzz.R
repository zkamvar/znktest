.onLoad <- function(libname, pkgname) {
  ns <- asNamespace(pkgname)
  delayedAssign("LOAD_TIME", load_time(), eval.env = ns, assign.env = ns)
}
