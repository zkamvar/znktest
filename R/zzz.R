.onLoad <- function(libname, pkgname) {
  ns <- asNamespace(pkgname)
  delayedAssign("LOAD_TIME", delayed_assign_example(), eval.env = ns, assign.env = ns)
}
