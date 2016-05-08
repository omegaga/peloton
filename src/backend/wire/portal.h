#include <sqlite3.h>
#include <string>
#include <vector>
#include "marshall.h"
#include <sys/time.h>

namespace peloton {
namespace wire {

struct Portal {
  std::string portal_name;
  std::string prep_stmt_name;
  std::vector<wiredb::FieldInfoType> rowdesc;
  std::string query_string;
  std::string query_type;
  sqlite3_stmt *stmt;
  std::vector<std::pair<int, std::string>> parameters;
  struct timeval ts;
};

} // namespace wire
} //namespace peloton
