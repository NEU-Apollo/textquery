#pragma once
#include "Query_base.h"
#include "Query.h"

class BinaryQuery : public Query_base
{
protected:
  Query lhs;
  Query rhs;
  std::string opSym; // 运算符名
  BinaryQuery(const Query &l, const Query &r, std::string s) : lhs(l), rhs(r), opSym(s) {}
  std::string rep() const { return "(" + lhs.rep() + " " + opSym + " " + rhs.rep() + ")"; }
};