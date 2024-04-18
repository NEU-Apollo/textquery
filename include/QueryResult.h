#pragma once
#include "all_std_include.h"
#include "TextQuery.h"

class QueryResult
{
  friend std::ostream &print(std::ostream &, const QueryResult &);

public:
  using line_no = TextQuery::line_no;
  QueryResult(std::string s,
              std::shared_ptr<std::set<line_no>> p,
              std::shared_ptr<std::vector<std::string>> f)
      : sought(s), lines(p), file(f) {}
  std::set<line_no>::iterator begin() { return lines->begin(); }
  std::set<line_no>::iterator end() { return lines->end(); }
  std::shared_ptr<std::vector<std::string>> get_file() const
  {
    return file;
  }

private:
  std::string sought;
  std::shared_ptr<std::set<line_no>> lines;
  std::shared_ptr<std::vector<std::string>> file;
};

std::ostream &print(std::ostream &os, const QueryResult &qr);
// {
//   os << qr.sought << " occurs" << qr.lines->size() << " times" << std::endl;
//   for (auto num : *qr.lines)
//   {
//     os << "\t(line " << num + 1 << ")" << *(qr.file->begin() + num) << std::endl;
//   }
//   return os;
// }