#pragma once
#include "all_std_include.h"
#include "TextQuery.h"
#include "QueryResult.h"
#include "Query_base.h"
#include "WordQuery.h"

class Query
{
  friend Query operator~(const Query &);
  friend Query operator|(const Query &, const Query &);
  friend Query operator&(const Query &, const Query &);

public:
  Query(const std::string &);
  QueryResult eval(const TextQuery &t) const { return q->eval(t); }
  std::string rep() const { return q->rep(); }

private:
  Query(std::shared_ptr<Query_base> b) : q(b) {}
  std::shared_ptr<Query_base> q;
};