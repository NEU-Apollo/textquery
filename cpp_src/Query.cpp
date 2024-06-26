#include "Query.h"
Query::Query(const std::string &s) : q(new WordQuery(s)) {}

std::ostream &operator<<(std::ostream &os, const Query &query)
{
  return os << query.rep();
}