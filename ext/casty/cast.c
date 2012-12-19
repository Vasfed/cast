#include "cast.h"

void Init_casty_ext(void) {
  cast_mC = rb_define_module("C");
  cast_init_parser();
}
