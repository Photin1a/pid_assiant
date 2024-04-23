#include "std_function.h"

void QuitProcess(){
  signal(SIGINT, [](int signal) {
    if (signal == SIGINT) {
      return exit(0);
    }
  }); //捕获ctrl+c退出
}
