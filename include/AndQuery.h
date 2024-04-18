#pragma once
#include "Query.h"
#include "Query_base.h"
#include "BinaryQuery.h"
#include "TextQuery.h"

class AndQuery : public BinaryQuery
{
  friend Query operator&(const Query &, const Query &);
  AndQuery(const Query &left, const Query &right) : BinaryQuery(left, right, "&") {}
  QueryResult eval(const TextQuery &) const override;
};

inline Query operator&(const Query &lhs, const Query &rhs)
{
  return std::shared_ptr<Query_base>(new AndQuery(lhs, rhs));
}