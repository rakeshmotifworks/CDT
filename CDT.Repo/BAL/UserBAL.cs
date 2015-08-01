using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CDT.Repo.BAL
{
    public class UserBAL
    {
        public User GetUserByEmailOrPhone(string emailOrPhone)
        {
            User user = new User();

            try
            {
                using (var db = new CDTEntities())
                {
                    user = db.Users.Where(u => u.Email == emailOrPhone).FirstOrDefault();
                }
                return user;
            }
            catch (Exception ex)
            {
                return user;
            }
        }

        public bool ValidateUser(string email, string password)
        {
            try
            {
                bool isFound = true;
                User user = new User();

                using (var db = new CDTEntities())
                {
                    user = db.Users.Where
                        (u => u.Email == email && u.Password == password).FirstOrDefault();
                    isFound = user != null ? true : false;
                }

                return isFound;
            }
            catch (Exception)
            {
                return false;
            }
        }
    }
}
