#include <iostream>
#include <fstream>
#include "TextQuery.h"
#include "Query.h"
#include "QueryResult.h"
#include "AndQuery.h"
#include "OrQuery.h"
#include "NotQuery.h"

int main()
{
  std::string filePath = "/home/wsy/cpp/textquery/story.txt";
  std::ifstream f(filePath);
  if (!f.is_open())
  {
    std::cout << filePath << " not found!" << std::endl;
    return 0;
  }
  TextQuery tq(f);
  auto ans = tq.query("you");
  print(std::cout, ans);
  std::cout << "-------------------------" << std::endl;
  Query q = Query("you") | Query("to") & Query("a"); // &的优先级比|高
  // Query q = ~Query("you");
  std::cout << q.rep() << std::endl;
  print(std::cout, q.eval(tq));
}