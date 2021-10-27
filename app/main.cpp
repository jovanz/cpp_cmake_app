#include <string>
#include <iostream>
#include <thread>
#include <chrono>
#include "greeting.h"

int main(int argc, char **argv)
{
  Greeting g;
  std::cout << g.greet() << std::endl;
  std::this_thread::sleep_for(std::chrono::seconds(3600));

  return 0;
}
