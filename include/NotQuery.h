#pragma once
#include "Query.h"

class NotQuery : public Query_base
{
  friend Query operator~(const Query &);
  NotQuery(const Query &q) : query(q) {}
  std::string rep() const override { return "~(" + query.rep() + +")"; }
  QueryResult eval(const TextQuery &) const override;

  Query query;
};

inline Query operator~(const Query &operand)
{
  return std::shared_ptr<Query_base>(new NotQuery(operand)); // 隐式接受一个std::shared_ptr<Query_base>的构造函数
}